import 'package:flutter/material.dart';
import 'package:medical_app/model/data_for_cause.dart';

class ListViewOfAfterBox extends StatelessWidget {
  ListViewOfAfterBox({
    Key? key,
  }) : super(key: key);
  var listUserData = DataForCause.genarateCause();

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        margin: EdgeInsets.all(16),
        child: Text(
          "What are the symptoms?",
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
        ),
      ),
      Container(
        height: 60,
        // color: Colors.grey.shade200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listUserData.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(left: 16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(16)),
              child: Center(
                  child: Text(
                "${listUserData[index].cause}",
                style: TextStyle(fontSize: 18),
              )),
            );
          },
        ),
      ),
      Container(
        margin: EdgeInsets.all(16),
        child: Text(
          "Popular doctors",
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Container();
          },
        ),
      ),
    ]);
  }
}
