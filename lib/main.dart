import 'package:avis/Pages/Auth/login.dart';
import 'package:avis/Pages/home_page.dart';
import 'package:avis/pages/forms/partB.dart';
import 'package:avis/pages/forms/partB4.dart';
import 'package:avis/pages/forms/select.dart';
import 'package:avis/pages/forms/step_first.dart';
import 'package:avis/pages/forms/test.dart';
import 'package:avis/services/user_service.dart';
import 'package:avis/utils/locale_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nepali_utils/nepali_utils.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async{
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  UserService userService = UserService();
  Map<String, dynamic> userData = await userService.getUserData();
  bool isLoggedIn = userData['token']?.isNotEmpty ?? false &&  userData['id'] != 0 &&  userData['first_name']?.isNotEmpty ?? false;
  NepaliUtils(Language.nepali);
  runApp(MyApp(isLoggedIn: isLoggedIn));
  FlutterNativeSplash.remove();
}
class MyApp extends StatelessWidget {
  final bool isLoggedIn;
  const MyApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LocalString(),
      locale: Locale("ne","NP"),
      debugShowCheckedModeBanner:false,
      home: HomePage(),
    );
  }
}
