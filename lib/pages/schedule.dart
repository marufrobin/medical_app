import 'package:flutter/material.dart';

import '../bottom_nav_bar.dart';

class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Colors.black54,
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
