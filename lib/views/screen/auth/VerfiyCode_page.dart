import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:graduation_project/controllers/Auth/verfiycode_controller.dart';
import 'package:graduation_project/views/widget/auth/customtextbodyauth.dart';
import 'package:graduation_project/views/widget/auth/customtexttitleauth.dart';
import 'package:graduation_project/views/widget/auth/logoauth.dart';

class VerfiyCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VerfiyCodeControllerImp controller = Get.put(VerfiyCodeControllerImp());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LogoAuth(),
            SizedBox(
              height: 15,
            ),
            CustomTextTitleAuth(text: "verification code"),
            SizedBox(height: 30),
            CustomTextBodyAuth(text: "Check code"),
            SizedBox(height: 10),
            CustomTextBodyAuth(
                text: "please Enter The Digit Code Sent To rittagul@gmail.com"),
            SizedBox(
              height: 25,
            ),
            OtpTextField(
              borderRadius: BorderRadius.circular(20),
              fieldWidth: 50,
              numberOfFields: 5,
              borderColor: Color(0xFF512DA8),
              showFieldAsBox: true,
              onCodeChanged: (String code) {},

              onSubmit: (String verificationCode) {
                controller.goToResetPassword();
              }, // end onSubmit
            ),
          ],
        ),
      ),
    );
  }
}
