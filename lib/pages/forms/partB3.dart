import 'package:avis/controllers/second_step_form_controller.dart';
import 'package:avis/pages/forms/form_builder.dart';
import 'package:avis/pages/forms/partB1.dart';
import 'package:avis/pages/forms/partB4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Partb3 extends StatefulWidget {
  const Partb3({super.key});

  @override
  State<Partb3> createState() => _Partb3State();
}

class _Partb3State extends State<Partb3> {
  bool _isc1selected = false;
  bool _isc2selected = false;
  bool _isc3selected = false;
  bool _isc4selected = false;
  bool _isc5selected = false;
  bool _isc6selected = false;

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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "कोरोनको कारण समस्या भएको छ अथवा थियो भनी कस्तो समस्या ?",
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
                                              value: _isc1selected,
                                              onChanged: (value) {
                                                setState(() {
                                                  _isc1selected = value!;
                                                });
                                              },
                                            ),
                                            Text('समस्या छैन'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: _isc2selected,
                                              onChanged: (value) {
                                                setState(() {
                                                  _isc2selected = value!;
                                                });
                                              },
                                            ),
                                            Text(
                                                'सम्झौता भंग गरि काम र तलब नदिएको'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: _isc3selected,
                                              onChanged: (value) {
                                                setState(() {
                                                  _isc3selected = value!;
                                                });
                                              },
                                            ),
                                            Text('५०% मात्र काम र तलब'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: _isc4selected,
                                              onChanged: (value) {
                                                setState(() {
                                                  _isc4selected = value!;
                                                });
                                              },
                                            ),
                                            Text(
                                                'निरन्तर काम गरिरहेको तर तलब नदिएको'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: _isc5selected,
                                              onChanged: (value) {
                                                setState(() {
                                                  _isc5selected = value!;
                                                });
                                              },
                                            ),
                                            Text(
                                                'क्वारेन्टाइनमा रहेको तर नियमित तलब पाइरहेको'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: _isc6selected,
                                              onChanged: (value) {
                                                setState(() {
                                                  _isc6selected = value!;
                                                });
                                              },
                                            ),
                                            Text(
                                                'क्वारेन्टाइनमा रहेको काम र तलब नपाइरहेको'),
                                          ],
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
                                  children: [
                                    Expanded(
                                      child: Text(
                                          "कोरोनको कारण कुनै स्वास्थ्य समस्य भएको छ अथवा थियो भनी कस्तो समस्या ?",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    // Text("*",
                                    //     style: TextStyle(
                                    //       color: Colors.red,
                                    //     ))
                                  ],
                                ),
                                DropdownButtonFormField<String>(
                                  items: [
                                    DropdownMenuItem(
                                      value:
                                          'क्वारेन्टाइनमा बस्ने पनि खाने पनि समस्या भएको',
                                      child: Text(
                                          'क्वारेन्टाइनमा बस्ने पनि खाने पनि समस्या भएको'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'खान नदिएको',
                                      child: Text('खान नदिएको'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'उपचार राम्रो नपाएको',
                                      child: Text('उपचार राम्रो नपाएको'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'कोरोनको कारण मृत्यु',
                                      child: Text('कोरोनको कारण मृत्यु'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'अन्य कारणले बिरामी भएको',
                                      child: Text('अन्य कारणले बिरामी भएको'),
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
                                          "वैदेशिक रोजगारमा रहदा परिवारमा केहि समस्या छ ?",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Text("*",
                                        style: TextStyle(
                                          color: Colors.red,
                                        ))
                                  ],
                                ),
                                DropdownButtonFormField<String>(
                                  items: [
                                    DropdownMenuItem(
                                      value:
                                          'क्पर्वारिक वेमेल (घरेलु हिंसा)',
                                      child: Text(
                                          'क्पर्वारिक वेमेल (घरेलु हिंसा)'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'गम्भीर मानसित चिन्ता / वेहोस हुने',
                                      child: Text('गम्भीर मानसित चिन्ता / वेहोस हुने'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'आरोप लान्छाना सम्बन्धिका घटना',
                                      child: Text('आरोप लान्छाना सम्बन्धिका घटना'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'दोस्रो विवाह',
                                      child: Text('दोस्रो विवाह'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'वृद्ध वुवा आमा मात्र घरमा भएको',
                                      child: Text('वृद्ध वुवा आमा मात्र घरमा भएको'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'वालवचा एक्लो भएको',
                                      child: Text('वालवचा एक्लो भएको'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'श्रीमानले लामो लामो समयदेखि पैसा नपठाएको',
                                      child: Text('श्रीमानले लामो लामो समयदेखि पैसा नपठाएको'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'परिवारमा लामो समयदेखि सम्पर्कमा नभएको',
                                      child: Text('परिवारमा लामो समयदेखि सम्पर्कमा नभएको'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'अन्य कुनै घटना',
                                      child: Text('अन्य कुनै घटना'),
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
                          ],
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(Partb4());
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
