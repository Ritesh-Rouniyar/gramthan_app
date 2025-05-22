import 'package:avis/controllers/second_step_form_controller.dart';
import 'package:avis/pages/forms/form_builder.dart';
import 'package:avis/pages/forms/partC4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Partc3 extends StatefulWidget {
  const Partc3({super.key});

  @override
  State<Partc3> createState() => _Partc3State();
}

class _Partc3State extends State<Partc3> {
  bool _islagani1selected = false;
  bool _islagani2selected = false;
  bool _islagani3selected = false;
  bool _islagani4selected = false;
  bool _islagani5selected = false;
  bool _islagani6selected = false;
  bool _islagani7selected = false;
  bool _islagani8selected = false;
  bool _islagani9selected = false;

  bool _isbyabsaya1selected = false;
  bool _isbyabsaya2selected = false;
  bool _isbyabsaya3selected = false;
  bool _isbyabsaya4selected = false;
  bool _isbyabsaya5selected = false;
  bool _isbyabsaya6selected = false;
  bool _isbyabsaya7selected = false;
  bool _isbyabsaya8selected = false;
  bool _isbyabsaya9selected = false;
  bool _isbyabsaya10selected = false;
  bool _isbyabsaya11selected = false;

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
        // title: Text('vaccine_detail'.tr, style: TextStyle(color: Colors.white)),
        title: Text(
            'वैदेशिक रोजगारबाट फर्केका व्यक्तिहरु सँग सम्बन्धी विवरण',
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
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    "विदेशको कमाई/पैसा के के मा लगानी गर्नु भयो ?",
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
                                            value: _islagani1selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _islagani1selected = value!;
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
                                            value: _islagani2selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _islagani2selected = value!;
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
                                            value: _islagani3selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _islagani3selected = value!;
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
                                            value: _islagani4selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _islagani4selected = value!;
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
                                            value: _islagani5selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _islagani5selected = value!;
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
                                            value: _islagani6selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _islagani6selected = value!;
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
                                            value: _islagani7selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _islagani7selected = value!;
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
                                            value: _islagani8selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _islagani8selected = value!;
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
                                            value: _islagani9selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _islagani9selected = value!;
                                              });
                                            },
                                          ),
                                          Text('स्वास्थ्य तथा औषधि उपचार खर्च'),
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
                          spacing: 10.0,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text("विदेशबाट कति पैसा बचाउनु भएको छ ? ",
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
                                hintText: 'रकम',
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
                          children: [
                            Row(
                              children: [
                                Text(
                                  "कुनै व्यावसाय शुरु गर्ने योजना बनाउनु भएको छ ?",
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
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    "छ भने के व्यावसाय शुरु गर्ने योजना छ ?",
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
                                            value: _isbyabsaya1selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _isbyabsaya1selected = value!;
                                              });
                                            },
                                          ),
                                          Text('कुखुरा पालन'),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: _isbyabsaya2selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _isbyabsaya2selected = value!;
                                              });
                                            },
                                          ),
                                          Text('वंगुरपालन'),
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
                                            value: _isbyabsaya3selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _isbyabsaya3selected = value!;
                                              });
                                            },
                                          ),
                                          Text('वाख्रा पालन'),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: _isbyabsaya4selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _isbyabsaya4selected = value!;
                                              });
                                            },
                                          ),
                                          Text('तरकारी खेती'),
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
                                            value: _isbyabsaya5selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _isbyabsaya5selected = value!;
                                              });
                                            },
                                          ),
                                          Text('फलफुल खेती'),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: _isbyabsaya6selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _isbyabsaya6selected = value!;
                                              });
                                            },
                                          ),
                                          Text('व्यापार'),
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
                                            value: _isbyabsaya7selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _isbyabsaya7selected = value!;
                                              });
                                            },
                                          ),
                                          Text('गाईपालन'),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: _isbyabsaya8selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _isbyabsaya8selected = value!;
                                              });
                                            },
                                          ),
                                          Text(' डेरी सचालन'),
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
                                            value: _isbyabsaya9selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _isbyabsaya9selected = value!;
                                              });
                                            },
                                          ),
                                          Text('सरकारी जागीर'),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: _isbyabsaya10selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _isbyabsaya10selected = value!;
                                              });
                                            },
                                          ),
                                          Text('यहि रोजगार गर्ने'),
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
                                            value: _isbyabsaya11selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _isbyabsaya11selected = value!;
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
                                  "कुनै व्यावसाय गरिरहनु भएको छ ?",
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
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    "छ भने के व्यावसाय गरिरहनु भएको छ ?",
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
                                            value: _isbusiness1selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _isbusiness1selected = value!;
                                              });
                                            },
                                          ),
                                          Text('कुखुरा पालन'),
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
                                          Text('वंगुरपालन'),
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
                                            value: _isbusiness3selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _isbusiness3selected = value!;
                                              });
                                            },
                                          ),
                                          Text('वाख्रा पालन'),
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
                                          Text('तरकारी खेती'),
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
                                            value: _isbusiness5selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _isbusiness5selected = value!;
                                              });
                                            },
                                          ),
                                          Text('फलफुल खेती'),
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
                                          Text('व्यापार'),
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
                                            value: _isbusiness7selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _isbusiness7selected = value!;
                                              });
                                            },
                                          ),
                                          Text('गाईपालन'),
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
                                          Text(' डेरी सचालन'),
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
                                            value: _isbusiness9selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _isbusiness9selected = value!;
                                              });
                                            },
                                          ),
                                          Text('सरकारी जागीर'),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: _isbusiness10selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _isbusiness10selected = value!;
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
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(Partc4());
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
