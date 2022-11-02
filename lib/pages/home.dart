import 'package:flutter/material.dart';
import 'package:medical_app/bottom_nav_bar.dart';

class HomeDemo extends StatelessWidget {
  const HomeDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Colors.green,
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
