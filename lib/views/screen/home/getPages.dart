import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation_project/controllers/home/getPagesScreens_Controller.dart';
import 'package:graduation_project/core/theme/Themes.dart';
import 'package:graduation_project/views/screen/home/DrawerScreen.dart';
import 'package:graduation_project/views/widget/home/bottomAppbarMaterialButton.dart';

class getPagesScreens extends GetView<getPagesScreensControllerImp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerScreen(),
      ),
      appBar: AppBar(
          elevation: 0,
          actions: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.notifications,
                size: 30,
                color: Colors.grey.withOpacity(.9),
              ),
            ),
          ],
          title: GetBuilder<getPagesScreensControllerImp>(
            builder: (controller) => Text(
              '${controller.getPages[controller.pageIndex]['title']}',
              style: Themes().headLine2.copyWith(
                    fontSize: 20,
                  ),
            ),
          )),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            controller.getPages.length,
            (index) => bottomAppbarMaterialButton(
              title: '${controller.getPages[index]['title']}',
              onPressedIcon: () {
                controller.changePageIndex(index);
              },
              iconData: controller.getPages[index]['icon'] as IconData,
              selectIconData:
                  controller.getPages[index]['selectIcon'] as IconData,
              index: index,
            ),
          ),
        ),
      ),
      body: GetBuilder<getPagesScreensControllerImp>(
        builder: (controller) =>
            controller.getPages[controller.pageIndex]['page'] as Widget,
      ),
    );
  }
}
