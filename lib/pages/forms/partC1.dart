import 'package:avis/controllers/second_step_form_controller.dart';
import 'package:avis/pages/forms/form_builder.dart';
import 'package:avis/pages/forms/partB1.dart';
import 'package:avis/pages/forms/partC2.dart';
import 'package:avis/pages/forms/test.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Partc1 extends StatefulWidget {
  const Partc1({super.key});

  @override
  State<Partc1> createState() => _Partc1State();
}

class _Partc1State extends State<Partc1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('vaccine_detail'.tr, style: TextStyle(color: Colors.white)),
        title: Text('वैदेशिक रोजगारबाट फर्केका व्यक्तिहरु सँग सम्बन्धी विवरण',
            style: TextStyle(color: Colors.white, fontSize: 14)),
        backgroundColor: Colors.blue[800],
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Form(
                child: Column(
                  spacing: 20,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10.0,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 10.0,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                        "वैदेशिक रोजगारबाट फर्केको व्यक्तिको नाम",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text("*",
                                        style: TextStyle(
                                          color: Colors.red,
                                        ))
                                  ],
                                ),
                              ],
                            ),
                            TextFormField(
                              // controller: controller.nameController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.blue[50],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: 'व्यक्तिको नाम',
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 12),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'व्यक्तिको नाम ${'required'.tr}';
                                }
                                return null;
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "${'farmer_gender'.tr} :",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "*",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              DropdownButtonFormField<String>(
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
                                  // controller.selectedGender = value!;
                                },
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.blue[50],
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 8),
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
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "उमेर",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "*",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                              // SizedBox(height: 2),
                              TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.blue[50],
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: 'उमेर',
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
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "जातजाति",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "*",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              DropdownButtonFormField<String>(
                                items: [
                                  DropdownMenuItem(
                                    value: 'पहाडी',
                                    child: Text('पहाडी'),
                                  ),
                                  DropdownMenuItem(
                                    value: 'मधेशी',
                                    child: Text('मधेशी'),
                                  ),
                                  DropdownMenuItem(
                                    value: 'अन्य',
                                    child: Text('अन्य'),
                                  ),
                                ],
                                onChanged: (value) {
                                  // controller.selectedGender = value!;
                                },
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.blue[50],
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 8),
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
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "वैवाहिक अवस्था",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "*",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                              // SizedBox(height: 2),
                              SizedBox(height: 4),
                              DropdownButtonFormField<String>(
                                items: [
                                  DropdownMenuItem(
                                    value: 'विवाहित',
                                    child: Text('विवाहित'),
                                  ),
                                  DropdownMenuItem(
                                    value: 'अविवाहित',
                                    child: Text('अविवाहित'),
                                  ),
                                  DropdownMenuItem(
                                    value: 'विधवा',
                                    child: Text('विधवा'),
                                  ),
                                  DropdownMenuItem(
                                    value: 'विधुर',
                                    child: Text('विधुर'),
                                  ),
                                  DropdownMenuItem(
                                    value: 'छुटिएको',
                                    child: Text('छुटिएको'),
                                  ),
                                ],
                                onChanged: (value) {
                                  // controller.selectedGender = value!;
                                },
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.blue[50],
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 8),
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
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10.0,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "तपाईको परिवारबाट कति जना वैदेशिक रोजगारबाट फर्केका छन् ?",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
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
                              // readOnly: controller.isSelected.value,
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
                          keyboardType: TextInputType.number,
                          // readOnly: controller.isSelected.value,
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
                      children: [
                        Row(
                          children: [
                            Text(
                              "कुन देशबाट फर्किएको हो ?",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "*",
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                        SizedBox(height: 3),
                        TextFormField(
                          // controller: controller.nameController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.blue[50],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'देशको नाम',
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 13, horizontal: 12),
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "कति समयमा फर्किनु भयो ?",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "*",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                              TextFormField(
                                keyboardType: TextInputType.number,
                                // readOnly: controller.isSelected.value,
                                decoration: InputDecoration(
                                  filled: true,
                                  
                                  fillColor: Colors.blue[50],
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        12), // Rounded corners
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: 'समय',
                                  // hintStyle: TextStyle(fontSize: 13),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 16, horizontal: 12),
                                ),
                                // style: TextStyle(fontSize: 10),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'required'.tr;
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 15, height: 20,),
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "अवधि",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "*",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                              // SizedBox(height: 2),
                              // SizedBox(height: 10),
                              DropdownButtonFormField<String>(
                                
                                items: [
                                  DropdownMenuItem(
                                    value: 'दिन',
                                    child: Text('दिन'),
                                  ),
                                  DropdownMenuItem(
                                    value: 'महिना',
                                    child: Text('महिना'),
                                  ),
                                  DropdownMenuItem(
                                    value: 'बर्ष',
                                    child: Text('बर्ष'),
                                  ),
                                ],
                                onChanged: (value) {
                                  // controller.selectedGender = value!;
                                },
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.blue[50],
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 8),
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
                        ),
                      ],
                    ),
                 
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "के कारण ले फर्किनु भयो ?",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "*",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              DropdownButtonFormField<String>(
                                isExpanded: true,
                                items: [
                                  DropdownMenuItem(
                                    value: 'सम्झौता सकिएर ',
                                    child: Text('सम्झौता सकिएर '),
                                  ),
                                  DropdownMenuItem(
                                    value: 'कोरोनाले गर्दा कम्पनी ले करार अवधी नसकी नै पठाएर ',
                                    child: Text('कोरोनाले गर्दा कम्पनी ले करार अवधी नसकी नै पठाएर '),
                                  ),
                                  DropdownMenuItem(
                                    value: 'कोरोनाले गर्दा राजिनामा दिएर सुरक्षित हुन र परिवारसँग रहन',
                                    child: Text('कोरोनाले गर्दा राजिनामा दिएर सुरक्षित हुन र परिवारसँग रहन'),
                                  ),
                                  DropdownMenuItem(
                                    value: 'कम्पनि टुटेर',
                                    child: Text('कम्पनि टुटेर'),
                                  ),
                                  DropdownMenuItem(
                                    value: 'कोरोना बाहेक अन्य स्वास्थ्य समस्या भएर',
                                    child: Text('कोरोना बाहेक अन्य स्वास्थ्य समस्या भएर'),
                                  ),
                                  DropdownMenuItem(
                                    value: 'अन्य',
                                    child: Text('अन्य'),
                                  ),
                                ],
                                onChanged: (value) {
                                  // controller.selectedGender = value!;
                                },
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.blue[50],
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 8),
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
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(Partc2());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[800],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                        elevation: 4,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'अघि बढ्नुहोस',
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
            ),
          ),
        ),
      ),
    );
  }
}
