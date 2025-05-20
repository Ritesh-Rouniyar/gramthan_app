import 'package:avis/controllers/home_controller.dart';
import 'package:avis/models/data.dart';
import 'package:avis/repositories/api_repository.dart';
import 'package:avis/repositories/local/farmer_record_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DatabaseSyncController extends GetxController {
  final FarmerRecordRepository farmerRecordRepository = FarmerRecordRepository();
  final ApiRepository apiRepository = ApiRepository();
  final RxList<DataModel> listItems =<DataModel>[].obs;
  RxSet<int> selectedItems = RxSet<int>();
  RxSet<int> syncItems = RxSet<int>();
  RxBool isLoading = false.obs;
  bool get isAllSelected => listItems.length == selectedItems.length;

  @override
  void onInit() {
    super.onInit();
    try{
      fetchFarmersRecords();
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

  Future<void> fetchFarmersRecords() async {
    var fetchedFarmersRecords = await farmerRecordRepository.getCompletedRecords();
    listItems.assignAll(fetchedFarmersRecords);
  }

  void toggleSelectAll() {
    if (isAllSelected) {
      selectedItems.clear();
    } else {
      selectedItems.addAll(listItems.map((item) => item.id));
    }
    update();
  }

  void toggleSelection(int id) {
    if (selectedItems.contains(id)) {
      selectedItems.remove(id);
    } else {
      selectedItems.add(id);
    }
    update();
  }

  void syncData() async{
    isLoading.value = true;
   if(selectedItems.isNotEmpty){
     for (var itemId in selectedItems) {
       var farmer = listItems.firstWhere((item) => item.id == itemId);
       var oldData = await farmerRecordRepository.getRecordWithVaccines(farmer.id);
       var remarkData = await farmerRecordRepository.getRecordWithRemark(farmer.id);
       var farmerRecordJson = {
         'famer_phone':farmer.farmerNumber,
         'famer_name':farmer.farmerName,
         'farmer_ward':farmer.wardNo,
         'farmer_registration_no':farmer.farmerRegistrationNumber,
         'registration_no':farmer.registrationNumber,
         'latitude':farmer.latitude,
         'longitude':farmer.longitude,
         'vaccines_records':oldData.map((vaccineRecord) {
           return {
             'vaccine_id' : vaccineRecord['vaccine_id'],
             'animal_id' : vaccineRecord['animal_id'],
             'total_count' : vaccineRecord['total_count'],
             'vaccinated_count' : vaccineRecord['vaccinated_count'],
             'local_created_at' : vaccineRecord['created_at'],
             'local_updated_at' : vaccineRecord['updated_at'],
           };
         }).toList(),
         'remarks':remarkData.map((remarkRecord) {
           return {
             'vaccine_id' : remarkRecord['vaccine_id'],
             'remark' : remarkRecord['remark'],
             'local_created_at' : remarkRecord['created_at'],
             'local_updated_at' : remarkRecord['updated_at'],
           };
         }).toList(),
       };
       var c = await apiRepository.updateRecord(farmerRecordJson);
       if(c){
         farmerRecordRepository.deleteFarmerRecord(itemId);
         syncItems.add(itemId);
       }
     }
     if(syncItems.length == selectedItems.length){
       Get.snackbar(
         "Success!",
         "Data Synced Completely!",
         snackPosition: SnackPosition.BOTTOM,
         backgroundColor: Colors.green[400],
         colorText: Colors.white,
       );
     }else{
       Get.snackbar(
         "Warning!",
         "Something Went Wrong! All Data are the Synced",
         snackPosition: SnackPosition.BOTTOM,
         backgroundColor: Colors.yellow[400],
         colorText: Colors.white,
       );
     }
     final homeController = Get.find<HomeController>();
     await homeController.refreshCounts();
     fetchFarmersRecords();
   }
    isLoading.value = false;
  }
}
