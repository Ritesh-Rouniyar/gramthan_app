import 'package:avis/models/data.dart';
import 'package:avis/repositories/local/farmer_record_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DraftController  extends GetxController {
  final FarmerRecordRepository farmerRecordRepository = FarmerRecordRepository();
  final RxList<DataModel> farmersRecords = <DataModel>[].obs;

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
    var fetchedFarmersRecords = await farmerRecordRepository.getDraftsRecords();
    farmersRecords.assignAll(fetchedFarmersRecords);
  }
}