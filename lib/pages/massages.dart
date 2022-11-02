import 'package:flutter/material.dart';

import '../bottom_nav_bar.dart';

class Massage extends StatelessWidget {
  const Massage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Colors.cyan,
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
