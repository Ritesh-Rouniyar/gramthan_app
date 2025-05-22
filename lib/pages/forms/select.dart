import 'package:avis/Pages/complete_datas.dart';
import 'package:avis/Pages/database_sync.dart';
import 'package:avis/Pages/drafts.dart';
import 'package:avis/Pages/notification.dart';
import 'package:avis/controllers/app_controller.dart';
import 'package:avis/controllers/home_controller.dart';
import 'package:avis/pages/forms/partA.dart';
import 'package:avis/pages/forms/partB.dart';
import 'package:avis/pages/forms/partC1.dart';
import 'package:avis/pages/forms/step_first.dart';
import 'package:avis/repositories/local/farmer_record_repository.dart';
import 'package:avis/widgets/nav_drawer.dart';
import 'package:flutter/material.dart';
import 'package:nepali_utils/nepali_utils.dart';
import 'package:get/get.dart';

class SelectPage extends StatefulWidget {
  const SelectPage({super.key});

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  FarmerRecordRepository farmerRecordRepository = FarmerRecordRepository();
  final HomeController controller = Get.put(HomeController());
  final AppController appController = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    NepaliDateTime currentDate = NepaliDateTime.now();
    var date2 = NepaliDateFormat.MMMMEEEEd();
    var fDate = date2.format(currentDate);

    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.blue[800],
        drawer: NavDrawer(),
        body: SafeArea(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(right: 25, top: 25, bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          _scaffoldKey.currentState?.openDrawer();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(12)),
                          padding: EdgeInsets.all(12),
                          margin: EdgeInsets.only(left: 15.0, right: 10.0),
                          child: Icon(
                            Icons.menu_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Obx(() {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              controller.name.value,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              fDate,
                              style: TextStyle(
                                color: Colors.blue[200],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        );
                      }),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const Notifications(),
                          transition: Transition.rightToLeft);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12)),
                      padding: EdgeInsets.all(12),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35), // top-left corner
                    topRight: Radius.circular(35), // top-right corner
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 26),
                      child: Text(
                        "विवरण संकलन प्रकार छान्नुहोस्",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[700]),
                      ),
                    ),

                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 50),
                          child: Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Get.to(Partb());
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue[800],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 10),
                                  elevation: 4,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'बैदेशिक रोजगारमा रहेका व्यक्तिहरुसंग सम्बन्धि विवरण',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 28),
                              
                              ElevatedButton(
                                onPressed: () {
                                  Get.to(Partc1());
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue[800],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 10),
                                  elevation: 4,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'बैदेशिक रोजगारबाट फर्केका व्यक्तिहरुसंग सम्बन्धि विवरण',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 28),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ]),
        ));
  }
}
