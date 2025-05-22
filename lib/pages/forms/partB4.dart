import 'package:avis/controllers/second_step_form_controller.dart';
import 'package:avis/pages/forms/form_builder.dart';
import 'package:avis/pages/forms/partB1.dart';
import 'package:avis/pages/forms/partB5.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Partb4 extends StatefulWidget {
  const Partb4({super.key});

  @override
  State<Partb4> createState() => _Partb4State();
}

class _Partb4State extends State<Partb4> {
  bool _ismr1selected = false;
  bool _ismr2selected = false;
  bool _ismr3selected = false;
  bool _ismr4selected = false;
  bool _ismr5selected = false;
  bool _ismr6selected = false;

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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'यदि दोस्रो विवाह गरेको भए महिला कि पुरुषले गरेको हो ?',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                DropdownButtonFormField<String>(
                                  // value: controller.selectedGender,
                                  items: [
                                    DropdownMenuItem(
                                      value: 'male',
                                      child: Text('male'.tr),
                                    ),
                                    DropdownMenuItem(
                                      value: 'female',
                                      child: Text('female'.tr),
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
                                        vertical: 16, horizontal: 12),
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
                                        "साठी वर्ष माथिका वुवा आमा मात्र घरमा एक्लै बसेका छन् ?",
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
                                        "छोरा छोरि वोडिङ स्कूल पढउनुको लागि सदरमुकाम वा अन्य सहरमा पठाएका वा गएका छन् ?",
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
                                        "छोरा छोरि वोडिङ स्कूलमा पढउनुको लागि सदरमुकाम वा अन्य सहरमा पठाएका छन् भने छोरा कि छोरि पठाएका छन् ?",
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
                                      value: 'छोरा',
                                      child: Text('छोरा'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'छोरि',
                                      child: Text('छोरि'),
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
                                        "विदेशको मासिक कमाइ कति हुन्छ ?(परिवारलाई थाहा नहुन त्यसैलेप्रस्न नम्बर ३५ र ३६ मा जोड दिनुहोला) ",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                TextFormField(
                                  // controller: controller.wardController,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.blue[50],
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none,
                                    ),
                                    hintText: 'मसिक तलब',
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 16, horizontal: 12),
                                  ),
                                  // validator: (value) {
                                  //   if (value == null || value.isEmpty) {
                                  //     return '${'farmer_ward_no'.tr} ${'required'.tr}';
                                  //   }
                                  //   return null;
                                  // },
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                          "विदेशवाट पठाएको रकम कहाँबाट लिनेगर्नु भएको छ ?",
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
                                                value: _ismr1selected,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _ismr1selected = value!;
                                                  });
                                                },
                                              ),
                                              Text('सहकारीबाट'),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Checkbox(
                                                value: _ismr2selected,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _ismr2selected = value!;
                                                  });
                                                },
                                              ),
                                              Text('आईएमइ सेन्टरबाट'),
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
                                                value: _ismr3selected,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _ismr3selected = value!;
                                                  });
                                                },
                                              ),
                                              Text('बैंकबाट'),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Checkbox(
                                                value: _ismr4selected,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _ismr4selected = value!;
                                                  });
                                                },
                                              ),
                                              Text('फाइनान्स कम्पनिबाट'),
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
                                                value: _ismr5selected,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _ismr5selected = value!;
                                                  });
                                                },
                                              ),
                                              Text('हुण्डीबाट'),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Checkbox(
                                                value: _ismr6selected,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _ismr6selected = value!;
                                                  });
                                                },
                                              ),
                                              Text('साथीभाई बाट'),
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
                                  children: [
                                    Expanded(
                                      child: Text(
                                          "कोरोनको कारणले खाइपाई आएको तलब सुविधामा केहि परिवर्तन आएको छ ? छ भनेकति फरक भएको छ ?",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                                DropdownButtonFormField<String>(
                                  items: [
                                    DropdownMenuItem(
                                      value: 'कोरोना पछि तलब नै पठाएको छैन',
                                      child:
                                          Text('कोरोना पछि तलब नै पठाएको छैन'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'पठाएको छ तर ७५% मात्र',
                                      child: Text('पठाएको छ तर ७५% मात्र'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'पठाएको छ तर ५०% मात्र',
                                      child: Text('पठाएको छ तर ५०% मात्र'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'पठाएको छ तर २५% मात्र',
                                      child: Text('पठाएको छ तर २५% मात्र'),
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
                                        "विदेश गएको व्यक्तिले पोहोर सालको कति पटक पैसा पठाउनु भयो ?",
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
                                TextFormField(
                                  // controller: controller.wardController,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.blue[50],
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none,
                                    ),
                                    hintText: 'कति पटक',
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
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "विदेश गएको व्यक्तिले पोहोर सालको जम्मा कति पैसा पठाउनु भयो ? (यस प्रश्नमा आवश्यक समय लगाएर कापीमा टिपोट गरेर मात्र तलको फारममा भर्ने)",
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
                                TextFormField(
                                  // controller: controller.wardController,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.blue[50],
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none,
                                    ),
                                    hintText: 'कति पटक',
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
                          ],
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(Partb5());
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
