import 'package:avis/models/farmer.dart';
import 'package:avis/repositories/local/farmer_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FarmersController  extends GetxController {
  final FarmerRepository farmerRepository = FarmerRepository();
  final RxList<Farmer> farmers = <Farmer>[].obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
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

  void deleteFarmer(int id) async{
    try{
      int rt = await farmerRepository.checkRecord(id);
     if(rt<1){
       int r = await farmerRepository.deleteFarmer(id);
       if(r<1){
         Get.snackbar(
           "Error",
           "Something Went Wrong",
           snackPosition: SnackPosition.BOTTOM,
           backgroundColor: Colors.red,
           colorText: Colors.white,
         );
         fetchFarmers();
       }
     }else {
       Get.snackbar(
         "Can't Delete Now!",
         "Data of these farmer is in draft. please sync it to delete farmer data.",
         snackPosition: SnackPosition.BOTTOM,
         backgroundColor: Colors.red,
         colorText: Colors.white,
       );
     }
    }catch(e){
      fetchFarmers();
      Get.snackbar(
        "Error",
        "An error occurred: ${e.toString()}",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  Future<void> fetchFarmers() async {
     var fetchedFarmers = await farmerRepository.getAllFarmer();
    farmers.assignAll(fetchedFarmers);
  }
}