import 'package:avis/repositories/local/vaccines_repository.dart';
import 'package:avis/services/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApiRepository{
  final ApiService apiService = ApiService();
  final VaccinesRepository vaccinesRepository = VaccinesRepository();

  Future<void> updateTables()async{
    var response = await apiService.dio.get('vaccineswithanimals');
    List<dynamic> decodedJson = response.data;
   if(decodedJson.isNotEmpty){
     await vaccinesRepository.deleteAllRecords();
     for(var data in decodedJson){
       var vacId = await vaccinesRepository.insertVaccine(data['name'],data['id']);
       for(var animal in data['animals']){
         var animId = await vaccinesRepository.insertAnimal(animal['name'],animal['id']);
         await vaccinesRepository.assignAnimalTOVaccine(animId, vacId);
       }
     }
   }
  }

  Future<bool> updateRecord(jsonData)async{
    try{
      var response = await apiService.dio.post('records',data:jsonData);
      Map<String,dynamic> decodedJson = response.data;
      if(decodedJson.isNotEmpty && response.statusCode == 200 && decodedJson['status']){
        return true;
      }else{
        Get.snackbar(
          "Error",
          "Something Went Wrong!",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    }on DioException catch (e){
      Get.snackbar(
        "Error",
        e.response?.data['message'] ??'An error occurred. Please try again later.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }catch(e){
      Get.snackbar(
        "Error",
        "An error occurred: ${e.toString()}",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
    return false;
  }
}