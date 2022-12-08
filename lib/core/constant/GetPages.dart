import 'package:get/get.dart';
import 'package:graduation_project/core/constant/routes.dart';
import 'package:graduation_project/views/screen/auth/VerfiyCode_page.dart';
import 'package:graduation_project/views/screen/auth/forgetpassword_page.dart';
import 'package:graduation_project/views/screen/auth/login_page.dart';
import 'package:graduation_project/views/screen/auth/resetpassword_page.dart';
import 'package:graduation_project/views/screen/auth/signup_page.dart';
import 'package:graduation_project/views/screen/auth/successresetpassword_page.dart';
import 'package:graduation_project/views/screen/auth/successsignup_page.dart';
import 'package:graduation_project/views/screen/home/getPages.dart';
import 'package:graduation_project/views/screen/home/homePageSceen.dart';
import 'package:graduation_project/views/screen/start/onboarding_page.dart';

class GetPages {
  List<GetPage> getPages = [
    // on boardinggggg
    GetPage(name: AppRoute.onboarding, page: () => OnboardingPage()),
    //Authhhhhhhh
    GetPage(name: AppRoute.login, page: () => Login()),
    GetPage(name: AppRoute.signUp, page: () => SignUp()),
    GetPage(name: AppRoute.forgetPassword, page: () => ForgetPassword()),
    GetPage(name: AppRoute.verfiyCode, page: () => VerfiyCode()),
    GetPage(name: AppRoute.resetPassword, page: () => ResetPassword()),
    GetPage(
        name: AppRoute.successResetPassword,
        page: () => SuccessResetPassword()),
    GetPage(name: AppRoute.successSignUp, page: () => SuccessSignUp()),
    GetPage(name: AppRoute.homePageScreen, page: (() => homePageSceen())),

    GetPage(name: AppRoute.getPagesScreens, page: (() => getPagesScreens())),
  ];
}
