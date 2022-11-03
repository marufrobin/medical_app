import 'package:flutter/material.dart';
import 'package:medical_app/home_page.dart';

import 'bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffECEBF4),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            child: HomePage(),
          ),
          // bottomSheet: BottomNavBar(),
          bottomNavigationBar: BottomNavBar(),
        ),
      ),
    );
  }
}
