import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graduation_project/controllers/home/homePage_Controller.dart';
import 'package:graduation_project/core/theme/Themes.dart';
import 'package:graduation_project/views/screen/home/DrawerScreen.dart';
import 'package:graduation_project/views/widget/home/TextFaildSearth.dart';
import 'package:graduation_project/views/widget/home/categoreisItems.dart';

class homePageSceen extends StatelessWidget {
  TextEditingController controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Explore',
                style: Themes().headLine2.copyWith(
                      fontSize: 30,
                    ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'best outfits for you',
                style: Themes().headLine3.copyWith(
                      fontSize: 20,
                    ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFaildSearth(
                title: 'Search items',
                textEditingController: controller,
                onPressedSearch: () {},
                onPressedIcon: () {},
              ),
              SizedBox(
                height: 20,
              ),
              categoreisItem(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Arrival',
                    style: Themes().headLine4.copyWith(fontSize: 20),
                  ),
                  Text(
                    'See All',
                    style: Themes()
                        .headLine3
                        .copyWith(fontSize: 18, fontWeight: FontWeight.normal),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 300,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) =>
                      Padding(padding: EdgeInsets.all(10)),
                  itemCount: getItems.length,
                  itemBuilder: ((context, index) => Container(
                        // height: 250,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          // color: Colors.grey.withOpacity(.2),
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.grey.withOpacity(.2),
                                        image: DecorationImage(
                                          fit: BoxFit.fitHeight,
                                          image: AssetImage(
                                            '${getItems[index]['imageLink']}',
                                          ),
                                        )),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '${getItems[index]['title']}',
                                    style: Themes().headLine4.copyWith(
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                  Text(
                                    '${getItems[index]['price']} \$',
                                    style: Themes().headLine1.copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
