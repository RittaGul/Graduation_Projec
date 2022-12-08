import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:graduation_project/core/constant/routes.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginConrollerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;
  @override
  login() {
    Get.offNamed(AppRoute.getPagesScreens);
  }

  @override
  goToSignUp() {
    Get.toNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}
