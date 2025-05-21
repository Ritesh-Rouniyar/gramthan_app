import 'package:avis/controllers/second_step_form_controller.dart';
import 'package:avis/pages/forms/form_builder.dart';
import 'package:avis/pages/forms/partB1.dart';
import 'package:avis/pages/forms/partB3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Partb2 extends StatefulWidget {
  const Partb2({super.key});

  @override
  State<Partb2> createState() => _Partb2State();
}

class _Partb2State extends State<Partb2> {
  bool _isworkselected = false;
  bool _issalaryselected = false;
  bool _iswsselected = false;
  bool _isreturnnepalselected = false;
  bool _ismedicalfailselected = false;
  bool _ispendingsalaryselected = false;
  bool _isaccomodationselected = false;
  // bool _isdocumentselected = false;
  // bool _isdocumentselected = false;

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
                                    Text("कुन माध्यमबाट गएको हो ?",
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
                                      value: 'एजेन्ट मार्फत',
                                      child: Text('एजेन्ट मार्फत'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'म्यानपावर कम्पनि मार्फत',
                                      child: Text('म्यानपावर कम्पनि मार्फत'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'आफन्त मार्फत',
                                      child: Text('आफन्त मार्फत'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'G to G मार्फत',
                                      child: Text('G to G मार्फत'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'कन्सल्टेन्सी मार्फत',
                                      child: Text('कन्सल्टेन्सी मार्फत'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'थाहा छैन',
                                      child: Text('थाहा छैन'),
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
                            // Column(
                            //   children: [
                            //     Row(
                            //       children: [
                            //         Text("सिप सिकेर गएको भए सिपको नाम ",
                            //             style: TextStyle(
                            //                 fontWeight: FontWeight.bold)),
                            //       ],
                            //     ),
                            //     TextFormField(
                            //       // controller: controller.nameController,
                            //       decoration: InputDecoration(
                            //         filled: true,
                            //         fillColor: Colors.blue[50],
                            //         border: OutlineInputBorder(
                            //           borderRadius: BorderRadius.circular(12),
                            //           borderSide: BorderSide.none,
                            //         ),
                            //         hintText: 'सिपको नाम',
                            //         contentPadding: EdgeInsets.symmetric(
                            //             vertical: 16, horizontal: 12),
                            //       ),
                            //     ),
                            //   ],
                            // ),

                            Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "कुन वाटो भएर गएको हो ?",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
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
                                      value: 'नेपालको विमानस्थल',
                                      child: Text('नेपालको विमानस्थल'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'भारतवाट',
                                      child: Text('भारतवाट'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'अन्यमुलुक हुदै',
                                      child: Text('अन्यमुलुक हुदै'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'थाहा छैन',
                                      child: Text('थाहा छैन'),
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
                                    Text(
                                      "विदेश जादा कति रकम तिर्नु भयो ?",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
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
                                      value: 'फ्री भिषा फ्री टिकटमा',
                                      child: Text('फ्री भिषा फ्री टिकटमा'),
                                    ),
                                    DropdownMenuItem(
                                      value: '११ देखि ५० हजार',
                                      child: Text('११ देखि ५० हजार'),
                                    ),
                                    DropdownMenuItem(
                                      value: '५१ देखि ८० हजार',
                                      child: Text('५१ देखि ८० हजार'),
                                    ),
                                    DropdownMenuItem(
                                      value: '८१ हजार देखि १ लाख सम्म',
                                      child: Text('८१ हजार देखि १ लाख सम्म'),
                                    ),
                                    DropdownMenuItem(
                                      value: '१ लाख १ हजार देखि १ लाख  ५० हजार',
                                      child: Text(
                                          '१ लाख १ हजार देखि १ लाख  ५० हजार'),
                                    ),
                                    DropdownMenuItem(
                                      value: '१ लाख ५१ हजार देखि २ लाख',
                                      child: Text('१ लाख ५१ हजार देखि २ लाख'),
                                    ),
                                    DropdownMenuItem(
                                      value: '२ लाख देखि माथि',
                                      child: Text('२ लाख देखि माथि'),
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
                                        "विदेश जादा लागेको मुख्य लागतको स्रोत ?",
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
                                      value: 'आफ्नै स्रोत',
                                      child: Text('आफ्नै स्रोत'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'सम्पति  बेचेर',
                                      child: Text('सम्पति  बेचेर'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'ऋण सापटी लिएर',
                                      child: Text('ऋण सापटी लिएर'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'थाहा छैन',
                                      child: Text('थाहा छैन'),
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
                                        "विदेश जादा ऋण लिएको हो भने कहाँवाट लिनु भएको हो ?",
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
                                      value: 'आफन्त तथा साथीभाइ',
                                      child: Text('आफन्त तथा साथीभाइ'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'बचत समूह',
                                      child: Text('बचत समूह'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'सहकारी',
                                      child: Text('सहकारी'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'बैंक',
                                      child: Text('बैंक'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'साहुमहाजन',
                                      child: Text('साहुमहाजन'),
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
                                        "विदेश जादा ऋण लिएको हो भने व्याज कति तिर्नुपर्छ ?",
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
                                      value: '१० प्रतिशत भन्दा कम',
                                      child: Text('१० प्रतिशत भन्दा कम'),
                                    ),
                                    DropdownMenuItem(
                                      value: '१० प्रतिशत देखि १५ प्रतिशत',
                                      child: Text('१० प्रतिशत देखि १५ प्रतिशत'),
                                    ),
                                    DropdownMenuItem(
                                      value: '१६ प्रतिशत देखि १८ प्रतिशत',
                                      child: Text('१६ प्रतिशत देखि १८ प्रतिशत'),
                                    ),
                                    DropdownMenuItem(
                                      value: '१९ प्रतिशत देखि २४ प्रतिशत',
                                      child: Text('१९ प्रतिशत देखि २४ प्रतिशत'),
                                    ),
                                    DropdownMenuItem(
                                      value: '२५ प्रतिशत देखि ३६ प्रतिशत',
                                      child: Text('२५ प्रतिशत देखि ३६ प्रतिशत'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'सो भन्दा माथि',
                                      child: Text('सो भन्दा माथि'),
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

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'ऋण तिरिसक्नु भयो ?',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4),
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
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            borderSide: BorderSide.none,
                                          ),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 12, horizontal: 8),
                                        ),
                                        // validator: (value) {
                                        //   if (value == null || value.isEmpty) {
                                        //     return '${'farmer_gender'.tr} ${'required'.tr}';
                                        //   }
                                        //   return null;
                                        // },
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "छ भने कति समयमा ?",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      // SizedBox(height: 2),
                                      DropdownButtonFormField<String>(
                                        items: [
                                          DropdownMenuItem(
                                            value: '३ महिना भित्र',
                                            child: Text('३ महिना भित्र'),
                                          ),
                                          DropdownMenuItem(
                                            value: '६ महिना भित्र',
                                            child: Text('६ महिना भित्र'),
                                          ),
                                          DropdownMenuItem(
                                            value: '९ महिना भित्र',
                                            child: Text('९ महिना भित्र'),
                                          ),
                                          DropdownMenuItem(
                                            value: '१२ महिना भित्र',
                                            child: Text('१२ महिना भित्र'),
                                          ),
                                          DropdownMenuItem(
                                            value: '१८महिना भित्र',
                                            child: Text('१८महिना भित्र'),
                                          ),
                                          DropdownMenuItem(
                                            value: '१८ भन्दा बढि',
                                            child: Text('१८ भन्दा बढि'),
                                          ),
                                        ],
                                        onChanged: (value) {
                                          // controller.selectedGender = value!;
                                        },
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.blue[50],
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            borderSide: BorderSide.none,
                                          ),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 12, horizontal: 8),
                                        ),
                                        // validator: (value) {
                                        //   if (value == null || value.isEmpty) {
                                        //     return '${'farmer_gender'.tr} ${'required'.tr}';
                                        //   }
                                        //   return null;
                                        // },
                                      ),
                                    ],
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
                                        "वैदेशिक रोजगारको क्रममा केहि समस्या केहि समस्या भएको छ अथवा भएको थियो ?",
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
                                        "समस्या भएको छ अथवा थियो भनी कस्तो समस्या ?",
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
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: _isworkselected,
                                              onChanged: (value) {
                                                setState(() {
                                                  _isworkselected = value!;
                                                });
                                              },
                                            ),
                                            Text('भने अनुसारको काम नपाएको'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: _issalaryselected,
                                              onChanged: (value) {
                                                setState(() {
                                                  _issalaryselected = value!;
                                                });
                                              },
                                            ),
                                            Text('भने अनुसारको तलब नपाएको'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: _iswsselected,
                                              onChanged: (value) {
                                                setState(() {
                                                  _iswsselected = value!;
                                                });
                                              },
                                            ),
                                            Text(
                                                'भने अनुसारको काम र तलब दुवै नपाएको'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: _isreturnnepalselected,
                                              onChanged: (value) {
                                                setState(() {
                                                  _isreturnnepalselected = value!;
                                                });
                                              },
                                            ),
                                            Text('मालिकले नेपाल फर्कन नदिएको'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: _ismedicalfailselected,
                                              onChanged: (value) {
                                                setState(() {
                                                  _ismedicalfailselected = value!;
                                                });
                                              },
                                            ),
                                            Text('मेडिकल फेल भएको'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: _ispendingsalaryselected,
                                              onChanged: (value) {
                                                setState(() {
                                                  _ispendingsalaryselected = value!;
                                                });
                                              },
                                            ),
                                            Text('लामो समयदेखि तलब नपाएको'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: _isaccomodationselected,
                                              onChanged: (value) {
                                                setState(() {
                                                  _isaccomodationselected = value!;
                                                });
                                              },
                                            ),
                                            Text(
                                                'कम्पनीले बस्न दिएको तर खाना नदिएको'),
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
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(Partb3());
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
