import 'package:avis/controllers/second_step_form_controller.dart';
import 'package:avis/pages/forms/form_builder.dart';
import 'package:avis/pages/forms/partC3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Partc2 extends StatefulWidget {
  const Partc2({super.key});

  @override
  State<Partc2> createState() => _Partc2State();
}

class _Partc2State extends State<Partc2> {
  bool _issip1selected = false;
  bool _issip2selected = false;
  bool _issip3selected = false;
  bool _issip4selected = false;
  bool _issip5selected = false;
  bool _issip6selected = false;
  bool _issip7selected = false;
  bool _issip8selected = false;
  bool _issip9selected = false;
  bool _issip10selected = false;
  bool _issip11selected = false;
  bool _issip12selected = false;
  bool _issip13selected = false;

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
                          children: [
                            Row(
                              children: [
                                Text(
                                  "फेरी विदेश जाने सोचमा हुनुहुन्छ ?",
                                  style: TextStyle(fontWeight: FontWeight.bold),
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
                                  value: 'छ ',
                                  child: Text('छ '),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "आजभोली के गर्दै हुनुहुन्छ? ?",
                                  style: TextStyle(fontWeight: FontWeight.bold),
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
                                  value: 'जागिर गरिरहेको',
                                  child: Text('जागिर गरिरहेको'),
                                ),
                                DropdownMenuItem(
                                  value: 'स्वरोजगार गरिरहेको ',
                                  child: Text('स्वरोजगार गरिरहेको '),
                                ),
                                DropdownMenuItem(
                                  value:
                                      'बेरोजगार रहेको र जागिरको खोजि गरिरहेको',
                                  child: Text(
                                      'बेरोजगार रहेको र जागिरको खोजि गरिरहेको'),
                                ),
                                DropdownMenuItem(
                                  value: 'विदेश जानलाइ कुरिरहेको',
                                  child: Text('विदेश जानलाइ कुरिरहेको'),
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
                          spacing: 10.0,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                        "जागिर गर्दै हुनुहुन्छ भने के जागिर पाउनु भएको छ ?",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
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
                                hintText: 'जागिरको नाम',
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 12),
                              ),
                              // validator: (value) {
                              //   if (value == null || value.isEmpty) {
                              //     return 'व्यक्तिको नाम ${'required'.tr}';
                              //   }
                              //   return null;
                              // },
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 10.0,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                        "बिदेशमा काम गर्दा के सिप तालिम सिकेर गएको हो ?",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
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
                                hintText: 'तालिमको नाम',
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 12),
                              ),
                              // validator: (value) {
                              //   if (value == null || value.isEmpty) {
                              //     return 'व्यक्तिको नाम ${'required'.tr}';
                              //   }
                              //   return null;
                              // },
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
                                    "सिप सिकेर जानु भएको थियो वा विदेशमा रहदा केहि सीप सिक्नु भएको छ ?",
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
                                            value: _issip1selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _issip1selected = value!;
                                              });
                                            },
                                          ),
                                          Text('प्लम्वर'),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: _issip2selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _issip2selected = value!;
                                              });
                                            },
                                          ),
                                          Text('स्काफफोल्डङ'),
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
                                            value: _issip3selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _issip3selected = value!;
                                              });
                                            },
                                          ),
                                          Text('कार्पेन्टर'),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: _issip4selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _issip4selected = value!;
                                              });
                                            },
                                          ),
                                          Text('मेसन'),
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
                                            value: _issip5selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _issip5selected = value!;
                                              });
                                            },
                                          ),
                                          Text('ईलेक्टिसीयन'),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: _issip6selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _issip6selected = value!;
                                              });
                                            },
                                          ),
                                          Text('क्लिनर'),
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
                                            value: _issip7selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _issip7selected = value!;
                                              });
                                            },
                                          ),
                                          Text('स्टील फिक्चर'),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: _issip8selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _issip8selected = value!;
                                              });
                                            },
                                          ),
                                          Text('कुक'),
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
                                            value: _issip9selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _issip9selected = value!;
                                              });
                                            },
                                          ),
                                          Text('कृषि'),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: _issip10selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _issip10selected = value!;
                                              });
                                            },
                                          ),
                                          Text('वेटर'),
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
                                            value: _issip11selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _issip11selected = value!;
                                              });
                                            },
                                          ),
                                          Text('सेक्यरीटी गार्ड'),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: _issip12selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _issip12selected = value!;
                                              });
                                            },
                                          ),
                                          Text('वेल्डर'),
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
                                            value: _issip13selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _issip13selected = value!;
                                              });
                                            },
                                          ),
                                          Text('अन्य'),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "सिप परिक्षण सम्बन्धी तपाईलाई केहि जानकारी छ ?",
                                  style: TextStyle(fontWeight: FontWeight.bold),
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
                                  value: 'छ ',
                                  child: Text('छ '),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "थाहा छ भने सीप परिक्षण गर्नु भएको छ ?",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            DropdownButtonFormField<String>(
                              isExpanded: true,
                              items: [
                                DropdownMenuItem(
                                  value: 'छ ',
                                  child: Text('छ '),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "यदि छैन भने सीप परिक्षण गर्ने सोंचमा हुनुहुन्छ ?",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            DropdownButtonFormField<String>(
                              isExpanded: true,
                              items: [
                                DropdownMenuItem(
                                  value: 'छ ',
                                  child: Text('छ '),
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
                              // validator: (value) {
                              //   if (value == null || value.isEmpty) {
                              //     return 'required'.tr;
                              //   }
                              //   return null;
                              // },
                            ),
                          ],
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(Partc3());
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
