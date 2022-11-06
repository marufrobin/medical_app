import 'package:flutter/material.dart';
import 'package:medical_app/home_page.dart';
import 'package:medical_app/pages/massages.dart';
import 'package:medical_app/pages/schedule.dart';
import 'package:medical_app/pages/setting.dart';

void main() {
  runApp(MyApp(
    selectIndex: 0,
  ));
}

class MyApp extends StatelessWidget {
  int selectIndex;
  MyApp({required this.selectIndex});

  List<Widget> pageName = [HomePage(), Massage(), SchedulePage(), Setting()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
        body: HomePage(),
        // bottomNavigationBar: BottomNavBar(),
      ),
    ));
  }
}
