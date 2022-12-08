import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:graduation_project/controllers/home/getPagesScreens_Controller.dart';
import 'package:graduation_project/controllers/start/onBoarding_Controller1.dart';
import 'package:graduation_project/core/constant/GetPages.dart';
import 'package:graduation_project/core/constant/routes.dart';
import 'package:graduation_project/core/localization/myLocale.dart';
import 'package:graduation_project/core/theme/Themes.dart';
import 'package:graduation_project/views/screen/start/onboarding_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  OnboardingControllerImp s1 = Get.put(OnboardingControllerImp());
  getPagesScreensControllerImp s2 = Get.put(getPagesScreensControllerImp());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes().lightTheme,
      themeMode: ThemeMode.light,
      translations: MyTranslation(),
      locale: const Locale('en'),
      initialRoute: AppRoute.onboarding,
      getPages: GetPages().getPages,
    );
  }
}
