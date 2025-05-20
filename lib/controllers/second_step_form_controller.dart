import 'package:avis/Pages/home_page.dart';
import 'package:avis/controllers/home_controller.dart';
import 'package:avis/data/local/db_helper.dart';
import 'package:avis/models/vaccine.dart';
import 'package:avis/pages/forms/location_form.dart';
import 'package:avis/repositories/local/farmer_record_repository.dart';
import 'package:avis/repositories/local/vaccines_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondStepFormController  extends GetxController {
  final VaccinesRepository vaccinesRepository= VaccinesRepository();
  final FarmerRecordRepository farmerRecordRepository = FarmerRecordRepository();
  var controllers = <String, TextEditingController>{}.obs;
  final formField = GlobalKey<FormState>();
  // RxBool isLoading = false.obs;
  RxInt step = 0.obs;
  RxBool noData = false.obs;
  final RxList<Vaccine> vaccines= <Vaccine>[].obs;

  @override
  void onInit() {
    super.onInit();
    getVaccines();
  }

  void getVaccines() async{
    try{
      var res = await vaccinesRepository.getAllVaccines();
      vaccines.assignAll(res);
      initializeControllers(vaccines[step.value]);
    }catch(e){
      Get.snackbar(
        "Error",
        "An error occurred: ${e.toString()}",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  void updateNoData(bool? v){
    if (v != null) {
      for (var field in vaccines[step.value].animals) {
        String controllerKey1 = '${vaccines[step.value].id}_${field.name}_total';
        String controllerKey2 = '${vaccines[step.value].id}_${field.name}_vaccinate';
        if (controllers.containsKey(controllerKey1)) {
          controllers[controllerKey1]?.text = v ? '0' : '';
        }
        if (controllers.containsKey(controllerKey2)) {
          controllers[controllerKey2]?.text = v ? '0' : '';
        }
      }
      noData.value = v;
    }
  }

  String getControllerKeyTotal(String name){
    return '${vaccines[step.value].id}_${name}_total';
  }

  String getControllerKeyVaccinate(String name){
    return '${vaccines[step.value].id}_${name}_vaccinate';
  }

  void initializeControllers(Vaccine vaccine){
    String cc= '${vaccine.id}_remark';
    if (!controllers.containsKey(cc)) {
      controllers[cc] = TextEditingController();
    }
    for (var field in vaccine.animals) {
      String controllerKey1 = '${vaccine.id}_${field.name}_total';
      String controllerKey2 = '${vaccine.id}_${field.name}_vaccinate';
      if (!controllers.containsKey(controllerKey1)) {
        controllers[controllerKey1] = TextEditingController();
      }
      if (!controllers.containsKey(controllerKey2)) {
        controllers[controllerKey2] = TextEditingController();
      }
    }
    populateSaveData(vaccine);
  }

  void populateSaveData(Vaccine vaccine) async{
    var farmerRecordId = Get.arguments;
    var oldData = await farmerRecordRepository.getRecordWithAnimalAndVaccine(farmerRecordId, vaccine.id);
    noData.value=true;
    for (var field in vaccine.animals) {
      var animalData = oldData.firstWhere(
            (record) => record['animal_id'] == field.id,
        orElse: () => <String, dynamic>{},
      );
      if((animalData.isEmpty || int.parse(animalData[DBHelper.COLUMN_TOTAL_COUNT]) > 0 || int.parse(animalData[DBHelper.COLUMN_VACCINATED_COUNT]) >0) && noData.value){
        noData.value=false;
      }
      String controllerKey1 = '${vaccine.id}_${field.name}_total';
      String controllerKey2 = '${vaccine.id}_${field.name}_vaccinate';
      if(animalData.isNotEmpty){
        if (controllers.containsKey(controllerKey1)) {
          controllers[controllerKey1]?.text=animalData[DBHelper.COLUMN_TOTAL_COUNT];
        }
        if (controllers.containsKey(controllerKey2)) {
          controllers[controllerKey2]?.text=animalData[DBHelper.COLUMN_VACCINATED_COUNT];
        }
      }
    }
  }

  void saveAndExit() async{
    if(formField.currentState!.validate()) {
      await save(Get.arguments);
      if(step.value<vaccines.length-1){
        Get.snackbar(
          'Saved',
          'Data is successfully saved in drafts!',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white,
          duration: Duration(seconds: 3),
        );
      }
      Get.offAll(HomePage());
    }
  }

  void finish() async{
    if(formField.currentState!.validate()) {
      final int arg = Get.arguments;
      Get.defaultDialog(
        title: "Confirm Save",
        content: Column(
          children: [
            Text(
              "Are you sure you want to submit? You will not be able to edit it after saving.",
              textAlign: TextAlign.center,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text("Cancel"),
          ),
          TextButton(
            onPressed: () async {
              await save(arg);
              Get.back();
              if(step.value<vaccines.length-1){
                Get.snackbar(
                  'Saved',
                  'Data is successfully saved in drafts!',
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.green,
                  colorText: Colors.white,
                  duration: Duration(seconds: 3),
                );
              }
              Get.to(()=>LocationForm(),arguments: arg);
            },
            child: Text("Submit"),
          ),
        ],
      );
    }
  }

  Future<void> save(int farmerRecordId) async{
      // print(farmerRecordId);
      var vaccine = vaccines[step.value];
      for(var animal in vaccine.animals){
        String totalCount = controllers[getControllerKeyTotal(animal.name)]?.text??'0';
        String vaccinatedCount = controllers[getControllerKeyVaccinate(animal.name)]?.text??'0';
        await farmerRecordRepository.insertOrUpdateRecordWithAnimalAndVaccine(farmerRecordId, vaccine.id, animal.id, totalCount, vaccinatedCount);
      }
      String ?remark = controllers['${vaccine.id}_remark']?.text;
      if(remark != null && remark.isNotEmpty){
        await farmerRecordRepository.insertOrUpdateRecordWithRemarks(farmerRecordId, vaccine.id,remark);
      }
      final homeController = Get.find<HomeController>();
      await homeController.refreshCounts();
    noData.value=false;
  }

  void moveNext() async{
    if(formField.currentState!.validate()) {
      await save(Get.arguments);
      if(step.value+1<vaccines.length){
        step.value++;
        initializeControllers(vaccines[step.value]);
      }else{
        Get.snackbar(
          "Error",
          "Something Went Wrong, Improper Behaviour Detected!",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    }
  }

  void movePrev() async{
    if(step.value>0){
      step.value--;
    }else{
      Get.snackbar(
        "Error",
        "Something Went Wrong, Improper Behaviour Detected!",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

}