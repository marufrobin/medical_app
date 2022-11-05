import 'package:flutter/material.dart';
import 'package:medical_app/bottom_nav_bar.dart';
import 'package:medical_app/home_page.dart';

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
        body: HomePage(),
        bottomNavigationBar: BottomNavBar(),
      ),
    ));
  }
}
