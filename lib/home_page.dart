import 'package:flutter/material.dart';
import 'package:medical_app/bottom_nav_bar.dart';

import 'model/model_data.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  var ListUserData = ModelData.doctorData();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        body: Column(
          children: [
            Container(
                padding: EdgeInsets.all(16),
                child: Column(children: [
                  buildCustomAppBar(context),
                  Row(children: [
                    Container(
                      margin: EdgeInsets.only(right: 16),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.5,
                      color: Color(0xff6B5DD5),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.5,
                      color: Color(0xffFEFEFE),
                    ),
                  ])
                ]))
          ],
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }

  Row buildCustomAppBar(context) => Row(
        children: [
          Text(
            "Maruf Robin ",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          Transform.rotate(
            angle: 300,
            child: Icon(
              Icons.waving_hand_sharp,
              color: Colors.yellow.shade800,
              size: 30,
            ),
          ),
          Spacer(),
          CircleAvatar(
            backgroundColor: Color(0xffFFCCCD),
            child: Image.asset("${ListUserData[0].doctorImage}", scale: 14),
            radius: 28,
          )
        ],
      );
}
