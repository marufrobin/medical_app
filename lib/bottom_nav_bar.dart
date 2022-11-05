import 'package:flutter/material.dart';
import 'package:medical_app/pages/massages.dart';
import 'package:medical_app/pages/schedule.dart';
import 'package:medical_app/pages/setting.dart';

import 'home_page.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  bool isSchdule = false;
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
                  builder: (context) => HomePage(),
                ));
              },
              child: buildNavButton(
                  imageLocation: "images/homeIcon.png",
                  buttonName: "Home",
                  clr: Color(0xff695CD5))),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Massage(),
                ));
              },
              child: buildNavButton(
                  imageLocation: "images/massageIcon.png",
                  buttonName: "Massages",
                  clr: Color(0xffDAD9E3))),
          TextButton(
            onPressed: () {
              setState(() {
                isSchdule = true;
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SchedulePage(),
                ));
              });
            },
            child: buildNavButton(
                imageLocation: isSchdule == false
                    ? "images/calenderIcon.png"
                    : "images/calenderBlueIcon.png",
                buttonName: "Schedule",
                clr:
                    isSchdule == false ? Color(0xff695CD5) : Color(0xffDAD9E3)),
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Setting(),
                ));
              },
              child: buildNavButton(
                  imageLocation: "images/settingIcon.png",
                  buttonName: "Settings",
                  clr: Color(0xffDAD9E3))),
        ],
      ),
    );
  }

  Widget buildNavButton(
      {required String imageLocation,
      required String buttonName,
      required Color clr}) {
    return Column(
      children: [
        Image.asset(
          "${imageLocation}",
          scale: 2.4,
          height: 40,
          width: 40,
        ),
        Text(
          "$buttonName",
          style: TextStyle(color: clr, fontSize: 16),
        )
      ],
    );
  }
}
