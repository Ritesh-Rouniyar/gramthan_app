import 'package:avis/controllers/second_step_form_controller.dart';
import 'package:avis/pages/forms/form_builder.dart';
import 'package:avis/pages/forms/location_form.dart';
import 'package:avis/pages/forms/partB1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Partb5 extends StatefulWidget {
  const Partb5({super.key});

  @override
  State<Partb5> createState() => _PartbState();
}

class _PartbState extends State<Partb5> {
  bool _iskharcha1selected = false;
  bool _iskharcha2selected = false;
  bool _iskharcha3selected = false;
  bool _iskharcha4selected = false;
  bool _iskharcha5selected = false;
  bool _iskharcha6selected = false;
  bool _iskharcha7selected = false;
  bool _iskharcha8selected = false;
  bool _iskharcha9selected = false;

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
                                    Expanded(
                                      child: Text(
                                          "उक्त विदेशवाट पठाएको रकम के के मा खर्च गर्नु भयो ? (यस प्रस्न र यस भन्दा तल खर्चको शीर्षकमा वढी अर्थात आवश्यक समय लगाएर कापीमा टिपोट गरेर मात्र भर्ने)",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Text("*",
                                        style: TextStyle(
                                          color: Colors.red,
                                        ))
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
                                                value: _iskharcha1selected,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _iskharcha1selected =
                                                        value!;
                                                  });
                                                },
                                              ),
                                              Text('घर खर्च तथा खानपान'),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Checkbox(
                                                value: _iskharcha2selected,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _iskharcha2selected =
                                                        value!;
                                                  });
                                                },
                                              ),
                                              Text('बचत'),
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
                                                value: _iskharcha3selected,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _iskharcha3selected =
                                                        value!;
                                                  });
                                                },
                                              ),
                                              Text('ऋण तिर्न'),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Checkbox(
                                                value: _iskharcha4selected,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _iskharcha4selected =
                                                        value!;
                                                  });
                                                },
                                              ),
                                              Text('जग्गा खरिदमा'),
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
                                                value: _iskharcha5selected,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _iskharcha5selected =
                                                        value!;
                                                  });
                                                },
                                              ),
                                              Text('घर बनाउनमा'),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Checkbox(
                                                value: _iskharcha6selected,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _iskharcha6selected =
                                                        value!;
                                                  });
                                                },
                                              ),
                                              Text('शिक्षामा'),
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
                                                value: _iskharcha7selected,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _iskharcha7selected =
                                                        value!;
                                                  });
                                                },
                                              ),
                                              Text('ऋण लगानी'),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Checkbox(
                                                value: _iskharcha8selected,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _iskharcha8selected =
                                                        value!;
                                                  });
                                                },
                                              ),
                                              Text('व्यवसाय सुरुवात'),
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
                                                value: _iskharcha9selected,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _iskharcha9selected =
                                                        value!;
                                                  });
                                                },
                                              ),
                                              Text(
                                                  'स्वास्थ्य तथा औषधि उपचार खर्च'),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
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
                                        "वचत गर्नु भएको छ भने कहाँ गर्नु भएको छ ?",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                DropdownButtonFormField<String>(
                                  items: [
                                    DropdownMenuItem(
                                      value: 'सहकारी',
                                      child: Text('सहकारी'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'स्थानीय समूहमा',
                                      child: Text('स्थानीय समूहमा'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'बैंकमा',
                                      child: Text('बैंकमा'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'फाइनान्समा',
                                      child: Text('फाइनान्समा'),
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
                                  // validator: (value) {
                                  //   if (value == null || value.isEmpty) {
                                  //     return 'required'.tr;
                                  //   }
                                  //   return null;
                                  // },
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
                                        "विदेशवाट फर्केपछि के गर्ने योजना छ ?",
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
                                  isExpanded: true,
                                  items: [
                                    DropdownMenuItem(
                                      value:
                                          'विदेशमा प्राप्त गरेको क्षमता अनुसार आफ्नै व्यावसाय गर्छु',
                                      child: Text(
                                          'विदेशमा प्राप्त गरेको क्षमता अनुसार आफ्नै व्यावसाय गर्छु'),
                                    ),
                                    DropdownMenuItem(
                                      value:
                                          'विदेशमा प्राप्त गरेको काम भन्दा फरक क्षेत्रमा भए पनि  व्यावसाय गर्छु',
                                      child: Text(
                                          'विदेशमा प्राप्त गरेको काम भन्दा फरक क्षेत्रमा भए पनि  व्यावसाय गर्छु'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'विदेशको अनुभवमा जागिर गर्छु',
                                      child:
                                          Text('विदेशको अनुभवमा जागिर गर्छु'),
                                    ),
                                    DropdownMenuItem(
                                      value:
                                          'मेरो विदेशको अनुभव भन्दा फरक क्षेत्रमा जागिर गर्छु',
                                      child: Text(
                                          'मेरो विदेशको अनुभव भन्दा फरक क्षेत्रमा जागिर गर्छु'),
                                    ),
                                    DropdownMenuItem(
                                      value:
                                          'स्थानीय सरकारले प्रदान गर्ने रोजगारमा काम गर्छु',
                                      child: Text(
                                          'स्थानीय सरकारले प्रदान गर्ने रोजगारमा काम गर्छु'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'सरकारी जागिरको लागि प्रयास गर्ने',
                                      child: Text(
                                          'सरकारी जागिरको लागि प्रयास गर्ने'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'अहिले सम्म कुनै योजना छैन',
                                      child: Text('अहिले सम्म कुनै योजना छैन'),
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
                                        "विदेशको कमाइले तपाई अथवा तपाईको श्रीमान, छोरा, छोरीले घडेरी किन्नु भएको छ ?",
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
                                        "विदेशको कमाइले घडेरी किन्नु भएको छ भने कहाँ किन्नु भएको छ ?  ",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                DropdownButtonFormField<String>(
                                  items: [
                                    DropdownMenuItem(
                                      value: 'पालिका क्षेत्रमा',
                                      child: Text('पालिका क्षेत्रमा'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'घर नजिकै शहरमा',
                                      child: Text('घर नजिकै शहरमा'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'सदरमुकाम भएको शहरमा',
                                      child: Text('सदरमुकाम भएको शहरमा'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'प्रदेश कार्यालय भएको शहरमा',
                                      child: Text('प्रदेश कार्यालय भएको शहरमा'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'काठमान्डौमा',
                                      child: Text('काठमान्डौमा'),
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
                                  // validator: (value) {
                                  //   if (value == null || value.isEmpty) {
                                  //     return 'required'.tr;
                                  //   }
                                  //   return null;
                                  // },
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                          "वसाइ सरेर जाने योजना छ ? छ भने कहाँ ?",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
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
                                      value: 'बसाई सरेर जाने योजना छैन',
                                      child: Text('बसाई सरेर जाने योजना छैन'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'पालिका क्षेत्रमा',
                                      child: Text('पालिका क्षेत्रमा'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'घर नजिकै शहरमा',
                                      child: Text('घर नजिकै शहरमा'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'सदरमुकाम भएको शहरमा',
                                      child: Text('सदरमुकाम भएको शहरमा'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'प्रदेश कार्यालय भएको शहरमा',
                                      child: Text('प्रदेश कार्यालय भएको शहरमा'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'काठमान्डौमा',
                                      child: Text('काठमान्डौमा'),
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
