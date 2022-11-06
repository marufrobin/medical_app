import 'package:flutter/material.dart';

class ListViewOfAfterBox extends StatelessWidget {
  const ListViewOfAfterBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "What are the symptoms?",
        style: TextStyle(color: Colors.black, fontSize: 20),
      ),
    );
  }
}
