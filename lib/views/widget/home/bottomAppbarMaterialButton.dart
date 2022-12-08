import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation_project/controllers/home/getPagesScreens_Controller.dart';

class bottomAppbarMaterialButton extends StatelessWidget {
  String title;
  IconData iconData;
  IconData selectIconData;
  void Function() onPressedIcon;
  int index;
  bottomAppbarMaterialButton({
    required this.title,
    required this.onPressedIcon,
    required this.iconData,
    required this.selectIconData,
    required this.index,
  });
  @override
  Widget build(BuildContext context) {
    return GetBuilder<getPagesScreensControllerImp>(
        builder: ((controller) => Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                onPressed: onPressedIcon,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds: 400),
                      width: 20,
                      height: 10,
                      decoration: BoxDecoration(
                          color: controller.pageIndex == index
                              ? Color.fromARGB(255, 211, 110, 103)
                              : Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AnimatedContainer(
                      duration: Duration(seconds: 5),
                      child: Icon(
                        controller.pageIndex == index
                            ? selectIconData
                            : iconData,
                        color: controller.pageIndex == index
                            ? Color.fromARGB(255, 211, 110, 103)
                            : Colors.grey[600],
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
