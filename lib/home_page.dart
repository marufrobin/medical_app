import 'package:flutter/material.dart';
import 'package:medical_app/model/model_data.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  var ListUserData = ModelData.doctorData();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Schedule",
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.w600),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            padding: EdgeInsets.all(4),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff6B5DD5)),
                        padding: MaterialStateProperty.all(EdgeInsets.all(16))),
                    onPressed: () {},
                    child: Container(
                      child: Text(
                        "Upcoming",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    )),
                Spacer(),
                TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff6B5DD5)),
                        padding: MaterialStateProperty.all(EdgeInsets.all(16))),
                    onPressed: () {},
                    child: Container(
                      child: Text(
                        "Completed",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    )),
                Spacer(),
                TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff6B5DD5)),
                        padding: MaterialStateProperty.all(EdgeInsets.all(16))),
                    onPressed: () {},
                    child: Container(
                      child: Text(
                        "Canceled",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ))
              ],
            ),
          ),
          Text(
            "Nearest visit",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            width: double.infinity,
            height: 160,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(16)),
            child: Column(children: [
              Expanded(
                  child: Row(
                children: [
                  Expanded(flex: 4, child: Placeholder()),
                  Expanded(
                      child: CircleAvatar(
                          backgroundImage:AssetImage("${ListUserData[0].doctorImage}"),radius: 24,
                ],
              )),
              Divider(
                thickness: 4,
                endIndent: 20,
                color: Colors.black54,
              ),
              Expanded(
                // flex: 2,
                child: Placeholder(),
              )
            ]),
          )
        ],
      ),
    );
  }
}
