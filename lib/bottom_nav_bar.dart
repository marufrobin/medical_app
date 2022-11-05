import 'package:flutter/material.dart';
import 'package:medical_app/main.dart';
import 'package:medical_app/pages/massages.dart';
import 'package:medical_app/pages/schedule.dart';
import 'package:medical_app/pages/setting.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyApp(),
                ));
              },
              child: buildNavButton(
                  imageLocation: "images/homeIcon.png", buttonName: "Home")),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Massage(),
                ));
              },
              child: buildNavButton(
                  imageLocation: "images/massageIcon.png",
                  buttonName: "Massages")),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Schedule(),
              ));
            },
            child: buildNavButton(
                imageLocation: "images/calenderIcon.png",
                buttonName: "Schedule"),
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Setting(),
                ));
              },
              child: buildNavButton(
                  imageLocation: "images/settingIcon.png",
                  buttonName: "Settings")),
        ],
      ),
    );
  }

  Widget buildNavButton(
      {required String imageLocation, required String buttonName}) {
    return Column(
      children: [
        Image.asset(
          "${imageLocation}",
          scale: 2.4,
        ),
        Text(
          "$buttonName",
          style: TextStyle(color: Color(0xff695CD5), fontSize: 16),
        )
      ],
    );
  }
}
