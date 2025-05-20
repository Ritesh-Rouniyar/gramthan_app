import 'package:avis/controllers/farmers_controller.dart';
import 'package:avis/models/farmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FarmerItemWidget extends StatelessWidget {

  final Farmer listItem;
  final FarmersController controller = Get.find();
  FarmerItemWidget({super.key,required this.listItem});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(listItem.id.toString()),
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 20),
        child: Icon(Icons.delete, color: Colors.white),
      ),
      onDismissed: (direction) {
        controller.deleteFarmer(listItem.id);
      },
      direction: DismissDirection.endToStart,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                padding: EdgeInsets.only(top: 8,bottom: 3),
                child: Row(
                  spacing: 5,
                  children: [
                    Text("कृषकको नाम:",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16)),
                    Text(listItem.name,style: TextStyle(color: Colors.black,fontSize: 16))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 3,horizontal: 5),
                child: Row(
                  spacing: 5,
                  children: [
                    Text("ठेगाना:",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16)),
                    Text(listItem.ward,style: TextStyle(color: Colors.black,fontSize: 16))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 3,horizontal: 5),
                child: Row(
                  spacing: 5,
                  children: [
                    Text("संपर्क/${'registration_no'.tr}:",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16)),
                    Text(listItem.phone??listItem.registrationNo??'',style: TextStyle(color: Colors.black,fontSize: 16))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
