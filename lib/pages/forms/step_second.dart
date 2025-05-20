import 'package:avis/controllers/second_step_form_controller.dart';
import 'package:avis/pages/forms/form_builder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StepSecond extends StatefulWidget {
  const StepSecond({super.key});

  @override
  State<StepSecond> createState() => _StepSecondState();
}

class _StepSecondState extends State<StepSecond> {
  final SecondStepFormController controller = Get.put(
      SecondStepFormController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('vaccine_detail'.tr, style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue[800],
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              children: [
                Obx(() {
                  return Align(child:
                  controller.vaccines.isNotEmpty ? Text(
                      controller.vaccines[controller.step.value].name,
                      style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 18),
                      textAlign: TextAlign.center) : SizedBox(height: 1,)
                  );
                }),
                SizedBox(height: 15.0),
                FormBuilder(),
                SizedBox(height: 5.0),
                Row(children: [
                  Obx(() {
                    return Checkbox(value: controller.noData.value,
                        onChanged: controller.updateNoData,
                        activeColor: Colors.blue[800]);
                  }),
                  Text('no_animal'.tr,
                      style: TextStyle(fontWeight: FontWeight.bold))
                ]),
                Obx(() {
                  return controller.vaccines.isNotEmpty?
                  TextFormField(
                    controller: controller.controllers['${controller.vaccines[controller.step.value].id}_remark'],
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue[50],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'remarks'.tr,
                      contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                    ),
                  )
                      :SizedBox();
                }),
                SizedBox(height: 12.0),
                Obx(() {
                  return Row(
                    children: [
                      controller.step.value > 0 ? Expanded(
                        child: ElevatedButton(onPressed: controller.movePrev,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[800],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 10),
                            elevation: 4,),
                          child: Text('prev_step'.tr,
                            style: TextStyle(color: Colors.white),),
                        ),) : Expanded(
                        child: ElevatedButton(onPressed: controller.saveAndExit,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[700],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 10),
                            elevation: 4,),
                          child: Text("save_exit".tr,
                            style: TextStyle(color: Colors.white),),
                        ),
                      ),

                      SizedBox(width: 13.0),
                      controller.step.value < controller.vaccines.length - 1
                          ? Expanded(
                        child: ElevatedButton(onPressed: controller.moveNext,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[800],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 10),
                            elevation: 4,),
                          child: Text('next_step'.tr,
                            style: TextStyle(color: Colors.white),),
                        ),)
                          :
                      Expanded(
                        child: ElevatedButton(onPressed: controller.finish,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[700],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 10),
                            elevation: 4,),
                          child: Text("finish".tr,
                            style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ],);
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
