import 'package:avis/controllers/farmers_controller.dart';
import 'package:avis/widgets/farmer_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Farmers extends StatelessWidget {
  const Farmers({super.key});

  @override
  Widget build(BuildContext context) {
    final FarmersController controller = Get.put(FarmersController());
    return Scaffold(
      appBar: AppBar(
        title: Text('farmer_detail'.tr, style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue[800],
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      body: SafeArea(child:
      Obx(() {
        return Container(
          color: Colors.grey[300],
          padding: EdgeInsets.symmetric(vertical: 12),
          child: ListView.builder(
            itemCount: controller.farmers.length,
            itemBuilder: (context, index) {
              return FarmerItemWidget(listItem: controller.farmers[index]);
            },
          ),
        );
      })),
    );
  }
}
