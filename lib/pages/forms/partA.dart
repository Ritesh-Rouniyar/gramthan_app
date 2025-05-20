import 'package:avis/controllers/first_step_form_controller.dart';
import 'package:avis/models/farmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class Parta extends StatelessWidget {
  const Parta({super.key});

  @override
  Widget build(BuildContext context) {
    final FirstStepFormController controller =
        Get.put(FirstStepFormController());

    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text('family_detail'.tr, style: TextStyle(color: Colors.white)),
            ],
          ),
          backgroundColor: Colors.blue[800],
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 25.0),
            child: Form(
              key: controller.formField,
              child: Column(
                spacing: 30.0,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10.0,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("${'farmer_name'.tr} :",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text("*",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ))
                            ],
                          ),
                        ],
                      ),
                      TextFormField(
                        controller: controller.nameController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blue[50],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'farmer_name'.tr,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 12),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '${'farmer_name'.tr} ${'required'.tr}';
                          }
                          return null;
                        },
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "${'farmer_gender'.tr} :",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("*",
                              style: TextStyle(
                                color: Colors.red,
                              ))
                        ],
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField<String>(
                        value: controller.selectedGender,
                        items: [
                          DropdownMenuItem(
                            value: 'male',
                            child: Text('male'.tr),
                          ),
                          DropdownMenuItem(
                            value: 'female',
                            child: Text('female'.tr),
                          ),
                          DropdownMenuItem(
                            value: 'others',
                            child: Text('others'.tr),
                          ),
                        ],
                        onChanged: (value) {
                          controller.selectedGender = value!;
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blue[50],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 12),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '${'farmer_gender'.tr} ${'required'.tr}';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10.0,
                    children: [
                      //  Text("${'registration_no'.tr} : ${controller.registrationNo}",style: TextStyle(fontWeight: FontWeight.bold)),
                      //  SizedBox(height: 20),
                      Row(
                        children: [
                          Text("${'farmer_no'.tr} :",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("*",
                              style: TextStyle(
                                color: Colors.red,
                              ))
                        ],
                      ),
                      Autocomplete(
                        displayStringForOption: (Farmer obs) =>
                            obs.phone ?? obs.registrationNo ?? 'No any Value',
                        optionsBuilder: (TextEditingValue textEditingValue) {
                          controller.phone = textEditingValue.text;
                          return controller
                              .getFilteredItems(textEditingValue.text);
                        },
                        onSelected: (Farmer selectedItem) {
                          controller.selectHandle(selectedItem);
                        },
                        fieldViewBuilder: (context, controlled, focusNode,
                            onEditingComplete) {
                          return TextFormField(
                            controller: controlled,
                            keyboardType: TextInputType.phone,
                            focusNode: focusNode,
                            readOnly: controller.isSelected.value,
                            onEditingComplete: onEditingComplete,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.blue[50],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    12), // Rounded corners
                                borderSide: BorderSide.none,
                              ),
                              hintText: '${'farmer_no'.tr}',
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 12),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return '${'farmer_no'.tr} ${'required'.tr}';
                              }
                              if (value.length != 10 && value.length != 8) {
                                return 'Invalid ${'farmer_no'.tr}';
                              }
                              return null;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10.0,
                    children: [
                      Row(
                        children: [
                          Text("${'occupation'.tr} :",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("*",
                              style: TextStyle(
                                color: Colors.red,
                              ))
                        ],
                      ),
                      TextFormField(
                        controller: controller.occupationController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blue[50],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'occupation'.tr,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 12),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '${'occupation'.tr} ${'required'.tr}';
                          }
                          return null;
                        },
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10.0,
                    children: [
                      Row(
                        children: [
                          Text(
                            "तपाईको परिवारमा जम्मा कति जना हुनुहुन्छ ?",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "*",
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            readOnly: controller.isSelected.value,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.blue[50],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    12), // Rounded corners
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'male'.tr,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 12),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'required'.tr;
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        readOnly: controller.isSelected.value,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blue[50],
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(12), // Rounded corners
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'female'.tr,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 12),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'required'.tr;
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10.0,
                    children: [
                      Row(
                        children: [
                          Text(
                            "तपाईको परिवारबाट कति जना वैदेशिक रोजगारमा गएका छन् ?",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "*",
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            readOnly: controller.isSelected.value,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.blue[50],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    12), // Rounded corners
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'male'.tr,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 12),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'required'.tr;
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        readOnly: controller.isSelected.value,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blue[50],
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(12), // Rounded corners
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'female'.tr,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 12),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'required'.tr;
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10.0,
                    children: [
                      Row(
                        children: [
                          Text(
                            "ठेगाना",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "*",
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      TextFormField(
                        // controller: controller.wardController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blue[50],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "ठेगाना",
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 12),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'required'.tr;
                          }
                          return null;
                        },
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10.0,
                    children: [
                      Row(
                        children: [
                          Text("${'farmer_ward_no'.tr} :",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                            "*",
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      TextFormField(
                        controller: controller.wardController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blue[50],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'farmer_ward_no'.tr,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 12),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '${'farmer_ward_no'.tr} ${'required'.tr}';
                          }
                          return null;
                        },
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10.0,
                    children: [
                      Row(
                        children: [
                          Text("टोल वस्तीको नाम",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                            "*",
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      TextFormField(
                        // controller: controller.wardController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blue[50],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'टोल वस्तीको नाम'.tr,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 12),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'required'.tr;
                          }
                          return null;
                        },
                      )
                    ],
                  ),
                  ElevatedButton(
                    onPressed:
                        controller.isLoading.value ? null : controller.submit,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[800],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                      elevation: 4,
                    ),
                    child: controller.isLoading.value
                        ? SpinKitWave(
                            color: Colors.blue[800],
                            size: 26.0,
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'next_step'.tr,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 21,
                              ),
                            ],
                          ),
                  ),
                ],
              ),
            ),
          )),
        ));
  }
}
