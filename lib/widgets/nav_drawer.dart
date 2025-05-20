import 'package:avis/Pages/Auth/login.dart';
import 'package:avis/controllers/home_controller.dart';
import 'package:avis/data/local/db_helper.dart';
import 'package:avis/pages/farmers.dart';
import 'package:avis/pages/profile.dart';
import 'package:avis/repositories/api_repository.dart';
import 'package:avis/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavDrawer extends StatelessWidget {
  final HomeController controller = Get.find();
  NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    UserService userService = UserService();
    ApiRepository apiRepository = ApiRepository();
     return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue[800],
            ),
            child: Center(
              child: Text(
               'app_name'.tr,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person_4),
            title: Text('profile'.tr),
            onTap: () {
              Get.to(Profile(),transition: Transition.rightToLeftWithFade);
            },
          ),
          // ListTile(
          //   leading: Icon(Icons.security),
          //   title: Text('change_password'.tr),
          //   onTap: () {
          //     Get.to(ChangePassword(),transition: Transition.rightToLeftWithFade);
          //   },
          // ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('change_language'.tr),
            trailing: DropdownButton<String>(
              value: Get.locale?.languageCode == 'en' ? 'English' : 'Nepali',
              onChanged: (String? newValue) {
                if (newValue == 'English') {
                  Get.updateLocale(Locale('en', 'US'));
                } else if (newValue == 'Nepali') {
                  Get.updateLocale(Locale('ne', 'NP'));
                }
              },
              items: <String>['English', 'Nepali']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('farmer_detail'.tr),
            onTap: () {
              Get.to(Farmers(),transition: Transition.leftToRightWithFade);
            },
          ),
          ListTile(
            leading: Icon(Icons.update_rounded),
            title: Text('check_update'.tr),
            onTap: () async{
              if(controller.counts['drafts']!<1 && controller.counts['completed']!<1){
                await apiRepository.updateTables();
                Get.back();
                Get.snackbar(
                  'Update Complete',
                  'Drafts and completed data have been successfully updated!',
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.green,
                  colorText: Colors.white,
                  duration: Duration(seconds: 3),
                );
              }else{
                Get.dialog(
                  AlertDialog(
                    title: Text('Cannot Update Now'),
                    content: Text(
                        'Please complete the drafts data and sync the completed data before proceeding.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Get.back();
                          Navigator.pop(context);
                        },
                        child: Text('OK'),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () {
              userService.clearUserData();
              DBHelper.getInstance.delete();
              Get.snackbar(
                "Logged Out",
                "You have been successfully logged out.",
                snackPosition: SnackPosition.BOTTOM,
                backgroundColor: Colors.red,
                colorText: Colors.white,
              );
              Get.offAll(() => Login());
            },
          ),
        ],
      ),
    );
  }
}
