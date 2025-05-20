import 'package:avis/controllers/second_step_form_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormBuilder extends StatelessWidget {
  final SecondStepFormController controller = Get.find();

  FormBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formField,
      child: Obx(() {
        return Column(
          children: [
            if (controller.vaccines.isNotEmpty &&
                controller.vaccines[controller.step.value].animals.isNotEmpty)
              for (var animal in controller.vaccines[controller.step.value]
                  .animals)
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${animal.name} :",style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 5.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            flex: 1,
                            child: TextFormField(
                              readOnly: controller.noData.value,
                              controller: controller.controllers[controller.getControllerKeyTotal(animal.name)],
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.blue[50],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: 'total_count'.tr,
                                contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return  '${'total_count'.tr} ${'required'.tr}';
                                }
                                return null;
                              },
                            ),
                          ),
                          SizedBox(width: 10),
                          Flexible(
                            flex: 1,
                            child: TextFormField(
                              readOnly: controller.noData.value,
                              controller: controller.controllers[controller.getControllerKeyVaccinate(animal.name)],
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.blue[50],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: 'vaccinated_count'.tr,
                                contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return '${'vaccinated_count'.tr} ${'required'.tr}';
                                }
                                if(int.parse(value)>int.parse(controller.controllers[controller.getControllerKeyTotal(animal.name)]?.text??'0')){
                                  return '${'vaccinated_count'.tr} ${'not_match'.tr}';
                                }
                                return null;
                              },
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
          ],
        );
      }),
    );
  }
}
