import 'package:flutter/material.dart';
import 'package:medical_app/bottom_nav_bar.dart';
import 'package:medical_app/widgets/list_view_after_box.dart';

import 'model/model_data.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  var listUserData = ModelData.doctorData();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.all(16),
                child: Column(children: [
                  buildCustomAppBar(context),
                  Row(children: [
                    Container(
                      margin: EdgeInsets.only(right: 16, top: 16),
                      padding: EdgeInsets.all(16),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.42,
                      decoration: BoxDecoration(
                          color: Color(0xff6B5DD5),
                          borderRadius: BorderRadius.circular(16)),
                      child: buildBoxAfterAppBar(
                          "images/addIcon.png",
                          "Clinic Visit",
                          "Make an appointment",
                          Colors.white,
                          Colors.white60),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16),
                      padding: EdgeInsets.all(16),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.42,
                      decoration: BoxDecoration(
                          color: Color(0xffFEFEFE),
                          borderRadius: BorderRadius.circular(16)),
                      child: buildBoxAfterAppBar(
                          "images/homeIcon.png",
                          "Home Visit",
                          "Call the doctor home",
                          Colors.black,
                          Colors.black38),
                    ),
                  ])
                ])),
            ListViewOfAfterBox()
          ],
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }

  Column buildBoxAfterAppBar(String imagesName, String visitType, String info,
      Color visitClr, Color infoClr) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          child: Image.asset(
            '${imagesName}',
            scale: 3,
          ),
          radius: 26,
          backgroundColor: Colors.grey.shade200,
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.symmetric(vertical: 6),
          child: Text(
            visitType,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: visitClr),
          ),
        ),
        Text(
          info,
          style: TextStyle(fontSize: 13, color: infoClr),
        )
      ],
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
            child: Image.asset("${listUserData[0].doctorImage}", scale: 14),
            radius: 28,
          )
        ],
      );
}
