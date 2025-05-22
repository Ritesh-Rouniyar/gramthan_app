import 'package:avis/controllers/second_step_form_controller.dart';
import 'package:avis/pages/forms/form_builder.dart';
import 'package:avis/pages/forms/partB1.dart';
import 'package:avis/pages/forms/partB2.dart';
import 'package:avis/pages/forms/test.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Partb1 extends StatefulWidget {
  const Partb1({super.key});

  @override
  State<Partb1> createState() => _Partb1State();
}

class _Partb1State extends State<Partb1> {
  bool _ispasportselected = false;
  bool _issamjautaselected = false;
  bool _isbimaselected = false;
  bool _ismedicalselected = false;
  bool _ismoneyvoucherselected = false;
  bool _isshramselected = false;
  bool _isuseridselected = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('vaccine_detail'.tr, style: TextStyle(color: Colors.white)),
        title: Text('वैदेशिक रोजगारमा रहेका व्यक्तिहरुसंग सम्बन्धि विवरण',
            style: TextStyle(color: Colors.white, fontSize: 15)),
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
                  spacing: 30,
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
                                    Text("सिप तालिम सिकेर गएको हो / होइन ?",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text("*",
                                        style: TextStyle(
                                          color: Colors.red,
                                        ))
                                  ],
                                ),
                                DropdownButtonFormField<String>(
                                  items: [
                                    DropdownMenuItem(
                                      value: 'हो',
                                      child: Text('हो'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'होइन',
                                      child: Text('होइन'),
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
                                  children: [
                                    Text("सिप सिकेर गएको भए सिपको नाम ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
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
                                    hintText: 'सिपको नाम',
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 16, horizontal: 12),
                                  ),
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
                                        "विदेश जानु अघि सूचना केन्द्रबाट सूचनाजानकारी लिएर गएको ?",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "*",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                DropdownButtonFormField<String>(
                                  items: [
                                    DropdownMenuItem(
                                      value: 'हो',
                                      child: Text('हो'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'होइन',
                                      child: Text('होइन'),
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
                                Wrap(
                                  children: [
                                    Text(
                                      'यदि सूचना लिएर गएको हो भने कुन माध्यमबाट सूचना केन्द्र पुग्नु भएको हो ?',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                DropdownButtonFormField<String>(
                                  items: [
                                    DropdownMenuItem(
                                      value: 'रिटर्नी स्वय,स्वयंसेवक',
                                      child: Text('रिटर्नी स्वय,स्वयंसेवक'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'साथीभाई तथा पारिवारिक सदस्य ',
                                      child:
                                          Text('साथीभाई तथा पारिवारिक सदस्य '),
                                    ),
                                    DropdownMenuItem(
                                      value: 'म्यानपावर कम्पनि',
                                      child: Text('म्यानपावर कम्पनि'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'विद्यार्थी तथा शिक्षक',
                                      child: Text('विद्यार्थी तथा शिक्षक'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'रेडियो',
                                      child: Text('रेडियो'),
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
                                        "घर परिवारमा विदेश जादा चाहिने डकुमेन्टको फोटोकपी वा युजर आइडी र पासवर्ड छाडेको छ ?",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "*",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                DropdownButtonFormField<String>(
                                  items: [
                                    DropdownMenuItem(
                                      value: 'छ',
                                      child: Text('छ'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'छैन',
                                      child: Text('छैन'),
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
                                        "डकुमेन्टको फोटोकपी छाडेको छ भने के के छाडेको छ ?",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Checkbox(
                                                value: _ispasportselected,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _ispasportselected = value!;
                                                  });
                                                },
                                              ),
                                              Text('पासपोर्ट'),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Checkbox(
                                                value: _issamjautaselected,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _issamjautaselected =
                                                        value!;
                                                  });
                                                },
                                              ),
                                              Text('सम्झौता पत्र'),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Checkbox(
                                                value: _isbimaselected,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _isbimaselected = value!;
                                                  });
                                                },
                                              ),
                                              Text('विमाको कागज'),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Checkbox(
                                                value: _ismedicalselected,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _ismedicalselected = value!;
                                                  });
                                                },
                                              ),
                                              Text('मेडिकल कागज'),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Checkbox(
                                                value: _ismoneyvoucherselected,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _ismoneyvoucherselected =
                                                        value!;
                                                  });
                                                },
                                              ),
                                              Text('पैसा तिरेको भर्पाई'),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Checkbox(
                                                value: _isshramselected,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _isshramselected = value!;
                                                  });
                                                },
                                              ),
                                              Text('श्रम स्विकृति'),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Checkbox(
                                                value: _isuseridselected,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _isuseridselected = value!;
                                                  });
                                                },
                                              ),
                                              Text('युजर आइडी र पासवर्ड'),
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
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(Partb2());
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
