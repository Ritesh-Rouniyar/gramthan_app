import 'package:avis/controllers/second_step_form_controller.dart';
import 'package:avis/pages/forms/form_builder.dart';
import 'package:avis/pages/forms/location_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Partc4 extends StatefulWidget {
  const Partc4({super.key});

  @override
  State<Partc4> createState() => _Partc4State();
}

class _Partc4State extends State<Partc4> {
  bool _isbusiness1selected = false;
  bool _isbusiness2selected = false;
  bool _isbusiness3selected = false;
  bool _isbusiness4selected = false;
  bool _isbusiness5selected = false;
  bool _isbusiness6selected = false;
  bool _isbusiness7selected = false;
  bool _isbusiness8selected = false;
  bool _isbusiness9selected = false;
  bool _isbusiness10selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'वैदेशिक xxxxरोजगारबाट फर्केका व्यक्तिहरु सँग सम्बन्धी विवरण',
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
                                    Expanded(
                                      child: Text(
                                          "तपाईले संचालन गरिरहेको व्यावसायले कति जनालाई रोजगारी दिएको छ?",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Text(
                                      "*",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            TextFormField(
                              keyboardType: TextInputType.numberWithOptions(),
                              // controller: controller.nameController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.blue[50],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: 'संख्या',
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "तपाईले संचालन गरिरहेको व्यावसाय प्रबर्धनको लागि कुनै निकाय तथा स्थानीय सरकारको तर्फबाट कुनै सहयोग प्राप्त गर्नु भएको छ ?",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
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
                                  value: 'नगद सहयोग',
                                  child: Text('नगद सहयोग'),
                                ),
                                DropdownMenuItem(
                                  value: 'सामग्री सहयोग',
                                  child: Text('सामग्री सहयोग'),
                                ),
                                DropdownMenuItem(
                                  value: 'प्रबिधि सहयोग',
                                  child: Text('प्रबिधि सहयोग'),
                                ),
                                DropdownMenuItem(
                                  value: 'तालिम',
                                  child: Text('तालिम'),
                                ),
                                DropdownMenuItem(
                                  value: 'व्यावसाय दर्तामा छुट',
                                  child: Text('व्यावसाय दर्तामा छुट'),
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "व्यावसाय शुरु गर्न वा प्रबर्धनको लागि कुनै निकाय, स्थानीय सरकारको तर्फबाट कस्ता किसिमको सहयोगको अपेक्षा गर्नु भएको छ ?",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
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
                                  value: 'नगद सहयोग',
                                  child: Text('नगद सहयोग'),
                                ),
                                DropdownMenuItem(
                                  value: 'सामग्री सहयोग',
                                  child: Text('सामग्री सहयोग'),
                                ),
                                DropdownMenuItem(
                                  value: 'प्रबिधि सहयोग',
                                  child: Text('प्रबिधि सहयोग'),
                                ),
                                DropdownMenuItem(
                                  value: 'तालिम',
                                  child: Text('तालिम'),
                                ),
                                DropdownMenuItem(
                                  value: 'व्यावसाय दर्तामा छुट',
                                  child: Text('व्यावसाय दर्तामा छुट'),
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
                        Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    "व्यावसाय शुरु गर्न वा प्रबर्धनको लागि कस्ता खालका अप्ठ्याराहरुछन् ?",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Text(
                                  "*",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: _isbusiness1selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _isbusiness1selected = value!;
                                              });
                                            },
                                          ),
                                          Text('बजार ब्याबस्थापन'),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: _isbusiness2selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _isbusiness2selected = value!;
                                              });
                                            },
                                          ),
                                          Text('सिचाई'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: _isbusiness3selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _isbusiness3selected = value!;
                                              });
                                            },
                                          ),
                                          Text('प्रबिधिक सहयोगको कमी'),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: _isbusiness4selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _isbusiness4selected = value!;
                                              });
                                            },
                                          ),
                                          Text('तालिम'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: _isbusiness5selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _isbusiness5selected = value!;
                                              });
                                            },
                                          ),
                                          Text('यातायात तथा ढुवानी'),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: _isbusiness6selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _isbusiness6selected = value!;
                                              });
                                            },
                                          ),
                                          Text('अनुदान'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: _isbusiness7selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _isbusiness7selected = value!;
                                              });
                                            },
                                          ),
                                          Text('कच्चा सामग्रीको कमी'),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: _isbusiness8selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _isbusiness8selected = value!;
                                              });
                                            },
                                          ),
                                          Text('नीति नियम'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: _isbusiness9selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _isbusiness9selected = value!;
                                              });
                                            },
                                          ),
                                          Text('बजेटको अभाव'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(LocationForm());
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
