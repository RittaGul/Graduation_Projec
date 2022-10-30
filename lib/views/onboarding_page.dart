import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation_project/controllers/onboarding_controller.dart';

class OnboardingPage extends StatelessWidget {
  final _controller = OnboardingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller.pageController,
              onPageChanged: _controller.selectedPageIndex,
              itemCount: _controller.onboardingPages.length,
              itemBuilder: ((context, index) {
                return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                          _controller.onboardingPages[index].imageAsset),
                      SizedBox(height: 30),
                      Text(
                        _controller.onboardingPages[index].title,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          _controller.onboardingPages[index].description,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
            Positioned(
              height: 20,
              left: 20,
              child: Row(
                children: List.generate(
                  _controller.onboardingPages.length,
                  (index) => Obx(() {
                    return Container(
                      margin: EdgeInsets.all(4),
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                          color: _controller.selectedPageIndex.value == index
                              ? Color(0xfff67952)
                              : Colors.grey,
                          shape: BoxShape.circle),
                    );
                  }),
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              right: 130,
              left: 130,
              child: MaterialButton(
                elevation: 0,
                color: Color(0xfff67952),
                textColor: Colors.white,
                onPressed: _controller.forwardAction,
                child: Obx(
                  () {
                    return Text(
                      _controller.isLastPage ? "Get Started " : "Next",
                      style: TextStyle(fontSize: 16),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
