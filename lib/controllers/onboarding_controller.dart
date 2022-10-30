import 'package:flutter/widgets.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:get/state_manager.dart';
import 'package:graduation_project/models/onboarding_info.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();
  forwardAction() {
    if (isLastPage) {
      //go to home
    } else {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo(
      'assets/onboarding1.png',
      'Choose Product',
      'A product is the item offered for sale A product can be a service or an item. It can be physical or in virtual or cyber form',
    ),
    OnboardingInfo(
      'assets/onboarding2.png',
      'Make Payment',
      'Payment is the transfer of money services in exchange product or Payments typically made terms agreed ',
    ),
    OnboardingInfo(
      'assets/onboarding3.png',
      'Get Your Order',
      'Business or commerce an order is a stated intention either spoken to engage in a commercial transaction specific products ',
    ),
  ];
}
