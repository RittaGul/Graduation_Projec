import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/Themes.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.only(left: 12, top: 30),
      color: Color.fromARGB(255, 211, 133, 133),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 65,
                backgroundColor: Colors.white.withOpacity(.2),
                child: CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.white.withOpacity(.6),
                  child: Icon(
                    Icons.person,
                    color: Colors.black.withOpacity(.4),
                    size: 50,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Ritta Gül',
                style: Themes()
                    .headLine4
                    .copyWith(fontSize: 20, color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'ritta1999@gmail.com',
                style: Themes()
                    .headLine4
                    .copyWith(fontSize: 18, color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              getDrawerButtons(() {}, Icons.home_outlined, 'Home Page'),
              getDrawerButtons(() {}, Icons.favorite_border, 'Favorite'),
              getDrawerButtons(() {}, Icons.person_outline_outlined, 'Profile'),
            ],
          ),
          Container(
            padding: EdgeInsets.only(bottom: 30),
            child: getDrawerButtons(() {}, Icons.logout_outlined, 'Log Out'),
          )
        ],
      ),
    );
  }

  getDrawerButtons(var func, IconData iconData, String title) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: InkWell(
        onTap: func,
        child: Row(
          children: [
            Card(
              color: Colors.white.withOpacity(.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(.5),
                ),
                child: Icon(
                  iconData,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '$title',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
