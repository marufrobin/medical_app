import 'package:flutter/material.dart';
import 'package:medical_app/pages/home.dart';
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
                  builder: (context) => HomeDemo(),
                ));
              },
              child: buildNavButton(
                  iconName: Icons.home_filled, buttonName: "Home")),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Massage(),
                ));
              },
              child: buildNavButton(
                  iconName: Icons.textsms, buttonName: "Massages")),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Schedule(),
              ));
            },
            child: buildNavButton(
                iconName: Icons.calendar_month_rounded, buttonName: "Schedule"),
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Setting(),
                ));
              },
              child: buildNavButton(
                  iconName: Icons.settings, buttonName: "Settings")),
        ],
      ),
    );
  }

  Widget buildNavButton(
      {required IconData iconName, required String buttonName}) {
    return Column(
      children: [
        Icon(
          iconName,
          color: Color(0xff695CD5),
          size: 40,
        ),
        Text(
          "$buttonName",
          style: TextStyle(color: Color(0xff695CD5), fontSize: 16),
        )
      ],
    );
  }
}
