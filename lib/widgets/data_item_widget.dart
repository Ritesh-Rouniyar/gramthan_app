import 'package:avis/controllers/home_controller.dart';
import 'package:avis/models/data.dart';
import 'package:avis/pages/forms/step_second.dart';
import 'package:avis/repositories/local/farmer_record_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataItemWidget extends StatelessWidget {
  final DataModel listItem;
  final Future<void> Function() reFetch;
  final FarmerRecordRepository farmerRecordRepository = FarmerRecordRepository();
  final HomeController controller = Get.find();
  final bool isComplete;
  DataItemWidget({super.key,required this.listItem,required this.reFetch,required this.isComplete});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(!isComplete){
          Get.to(()=>StepSecond(),arguments: listItem.id);
        }
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        child: Stack(
          children:[ Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  padding: EdgeInsets.only(top: 8),
                  child: Row(
                    spacing: 5,
                    children: [
                      Text("दर्ता नम्बर:",style: TextStyle(color: Colors.blue[800],fontWeight: FontWeight.bold,fontSize: 18)),
                      Text(listItem.registrationNumber,style: TextStyle(color: Colors.blue[800],fontSize: 16))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  padding: EdgeInsets.only(top: 8,bottom: 3),
                  child: Row(
                    spacing: 5,
                    children: [
                      Text("कृषकको नाम:",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16)),
                      Text(listItem.farmerName,style: TextStyle(color: Colors.black,fontSize: 16))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 3,horizontal: 5),
                  child: Row(
                    spacing: 5,
                    children: [
                      Text("ठेगाना:",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16)),
                      Text(listItem.wardNo,style: TextStyle(color: Colors.black,fontSize: 16))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 3,horizontal: 5),
                  child: Row(
                    spacing: 5,
                    children: [
                      Text("पशु संख्या:",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16)),
                      Text(listItem.animalCount,style: TextStyle(color: Colors.black,fontSize: 16))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 3,horizontal: 5),
                  child: Row(
                    spacing: 5,
                    children: [
                      Text("खोप लगाइएको पशु संख्या:",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16)),
                      Text(listItem.vaccinationCount,style: TextStyle(color: Colors.black,fontSize: 16))
                    ],
                  ),
                ),
              ],
            ),
          ),
            Positioned(
              top: 5,
              right: 5,
              child: IconButton(
                icon: Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  Get.defaultDialog(
                    title: "Warning",
                    titleStyle: TextStyle(color: Colors.red, fontWeight: FontWeight.bold), // Red title for warning
                    middleText: "Are you sure you want to delete this record? This action cannot be undone.",
                    middleTextStyle: TextStyle(fontSize: 16),
                    backgroundColor: Colors.yellow[100], // Yellow background for warning
                    radius: 15,
                    contentPadding: EdgeInsets.symmetric(vertical: 20),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text('Cancel', style: TextStyle(color: Colors.black)),
                      ),
                      TextButton(
                        onPressed: () async{
                          Get.back();
                          var c = await farmerRecordRepository.deleteFarmerRecord(listItem.id);
                          reFetch();
                          await controller.refreshCounts();
                          if(c){
                            Get.snackbar(
                              'Deleted',
                              'Data is successfully deleted!',
                              snackPosition: SnackPosition.BOTTOM,
                              backgroundColor: Colors.green,
                              colorText: Colors.white,
                              duration: Duration(seconds: 1),
                            );
                          }else{
                            Get.snackbar(
                              "Error",
                              "Something Went Wrong!",
                              snackPosition: SnackPosition.BOTTOM,
                              backgroundColor: Colors.red,
                              colorText: Colors.white,
                            );
                          }
                        },
                        child: Text('Delete', style: TextStyle(color: Colors.red)),
                      ),
                    ],
                  );
                },
              ),
            ),
      ]
        ),
      ),
    );
  }
}

