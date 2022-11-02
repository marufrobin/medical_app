import 'package:flutter/material.dart';
import 'package:medical_app/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Placeholder(),
      ),
      // bottomSheet: BottomNavBar(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
