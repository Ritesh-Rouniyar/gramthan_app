import 'dart:math';

import 'package:avis/controllers/home_controller.dart';
import 'package:avis/models/farmer.dart';
import 'package:avis/pages/forms/step_second.dart';
import 'package:avis/repositories/local/farmer_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstStepFormController  extends GetxController {
  final FarmerRepository farmerRepository = FarmerRepository();
  final RxList<Farmer> _farmers = <Farmer>[].obs;
  final formField = GlobalKey<FormState>();
  String phone='';
  String registrationNo='';
  late TextEditingController nameController,wardController,genderController,occupationController;
  RxBool isLoading = false.obs;
  RxBool isSelected = false.obs;

String? selectedGender; 
 
  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
    wardController = TextEditingController();
    genderController = TextEditingController();
    occupationController = TextEditingController();
    var random = Random();
    int nm = 10000000 + random.nextInt(90000000);
    registrationNo = nm.toString();
    try{
      fetchFarmers();
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

  @override
  void onClose(){
    super.onClose();
    nameController.dispose();
    wardController.dispose();
    genderController.dispose();
    occupationController.dispose();
    formField.currentState?.reset();
  }

  void reset(){
    var random = Random();
    int nm = 10000000 + random.nextInt(90000000);
    registrationNo = nm.toString();
    phone='';
    formField.currentState?.reset();
    isSelected.value =false;
  }

  void selectHandle(Farmer selected){
    isSelected.value= true;
    phone=selected.phone??'';
    nameController.text=selected.name;
    wardController.text=selected.ward;
    occupationController.text=selected.occupation!;
    // genderController.text=selectedGender;
    registrationNo = selected.registrationNo??'';
  }

  Future<void> fetchFarmers() async {
    var fetchedFarmers = await farmerRepository.getAllFarmer();
    _farmers.assignAll(fetchedFarmers);
  }

  List<Farmer> getFilteredItems(String query) {
    if(query.isEmpty) return List<Farmer>.empty();
    return _farmers.where((item) => item.phone!.toLowerCase().contains(query.toLowerCase()) || item.registrationNo!.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  void submit() async{
    if(formField.currentState!.validate()) {
      isLoading.value = true;
      bool c;
      try {
        c=false;
        var name = nameController.text;
        var ward = wardController.text;
        var gender = genderController.text;
        if(name.isNotEmpty && ward.isNotEmpty && phone.isNotEmpty){
          var regisNo = registrationNo;
          String ?num;
          if(phone.length == 10){
            regisNo = phone;
          }else{
            num=phone;
          }
          var rid = await farmerRepository.insertFarmerAndFarmerRecord(
              phone: num,
              name: name,
              ward: ward,
              gender: gender,
            registrationNo: regisNo
          );
          final homeController = Get.find<HomeController>();
          homeController.refreshCounts();
          Get.off(StepSecond(),arguments: rid);
          c= rid>=1?true:false;
        }
      } catch (e) {
        print(e);
        c = false;
      }
       if(!c){
          Get.snackbar(
            "Error",
            "Something Went Wrong! Please try again later.",
            snackPosition: SnackPosition.BOTTOM,
          );
        }
        isLoading.value = false;
        fetchFarmers();
    }
  }
}