import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:graduation_project/core/constant/onBoarding_inf.dart';
import 'package:graduation_project/core/constant/routes.dart';

abstract class OnboardingController extends GetxController {
  next();
  skip();
  onPageChange(int pageIndex);
}

class OnboardingControllerImp extends OnboardingController {
  late PageController pageController;
  int currentPage = 0;
  @override
  next() {
    if (currentPage < onBoardingList.length - 1) {
      currentPage++;
      pageController.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 1200),
        curve: Curves.easeInOut,
      );
    } else {
      Get.offNamed(AppRoute.login);
      print('---------------------closed---------------------');
    }
  }

  @override
  onPageChange(int pageIndex) {
    currentPage = pageIndex;
  }

  @override
  skip() {
    Get.offNamed(AppRoute.login);
    print('---------------------closed---------------------');
  }

  @override
  void onInit() {
    pageController = PageController();

    super.onInit();
  }
}
