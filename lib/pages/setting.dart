import 'package:flutter/material.dart';

import '../bottom_nav_bar.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Colors.orange,
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
