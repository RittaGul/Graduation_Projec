import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation_project/core/constant/routes.dart';
import 'package:graduation_project/views/screen/home/homePageSceen.dart';

abstract class getPagesScreensController extends GetxController {
  changePageIndex(int i);
}

class getPagesScreensControllerImp extends getPagesScreensController {
  late int pageIndex;
  var getPages = [
    {
      'title': 'Home Page',
      'page': homePageSceen(),
      'icon': Icons.home_outlined,
      'selectIcon': Icons.home
    },
    {
      'title': 'shopping_cart_outlined',
      'page': Center(
        child: Text('shopping_cart_outlined'),
      ),
      'icon': Icons.shopping_cart_outlined,
      'selectIcon': Icons.shopping_cart_sharp
    },
    {
      'title': 'favorite_outline',
      'page': Center(
        child: Text('favorite_outline'),
      ),
      'icon': Icons.favorite_outline,
      'selectIcon': Icons.favorite_outlined
    },
    {
      'title': 'person',
      'page': Center(
        child: Text('person'),
      ),
      'icon': Icons.person_outline,
      'selectIcon': Icons.person
    },
  ];

  @override
  changePageIndex(int i) {
    pageIndex = i;

    print('========$pageIndex');
    update();
  }

  @override
  void onInit() {
    pageIndex = 0;
    super.onInit();
  }
}
