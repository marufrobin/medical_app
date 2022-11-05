import 'package:flutter/material.dart';
import 'package:medical_app/model/model_data.dart';
import 'package:medical_app/pages/list_buider.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  var ListUserData = ModelData.doctorData();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        // height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image.asset("images/home"),
            Text(
              "Schedule",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            tabView(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Text(
              "Nearest visit",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(vertical: 16),
              width: double.infinity,
              height: 190,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              child: Column(children: [
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${ListUserData[0].doctorName}",
                              style: TextStyle(
                                fontSize: 20,
                                // fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "${ListUserData[0].doctorType}",
                              style: TextStyle(
                                  fontSize: 16,
                                  // fontWeight: FontWeight.w500,
                                  color: Colors.black45),
                            )
                          ],
                        )),
                    CircleAvatar(
                      backgroundColor: Color(0xffFFCCCD),
                      child: Image.asset("${ListUserData[0].doctorImage}",
                          scale: 12),
                      radius: 30,
                    )
                  ],
                )),
                Divider(
                  thickness: 1,
                  // endIndent: 4,
                  color: Colors.grey,
                ),
                Expanded(
                  // flex: 2,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildCalenderTime(Icons.calendar_month_rounded,
                              ListUserData[0].appointDate),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          buildCalenderTime(Icons.access_time_filled_outlined,
                              ListUserData[0].appointTime),
                          // Spacer(),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),

                          Text(
                            "Confirmed",
                            style: TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                      // Spacer(),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(top: 4),
                              padding: EdgeInsets.symmetric(
                                  vertical: 14, horizontal: 50),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(top: 4),
                              padding: EdgeInsets.symmetric(
                                  vertical: 14, horizontal: 40),
                              decoration: BoxDecoration(
                                  color: Color(0xff6B5DD5),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Text(
                                  "Reschdule",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Text(
              "Future visit",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            ListBuilder()
          ],
        ),
      ),
    );
  }

  Container tabView() {
    return Container(
      width: double.infinity,
      height: 64,
      decoration: BoxDecoration(
          color: Colors.grey.shade300.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          TextButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                  backgroundColor: MaterialStateProperty.all(Color(0xff6B5DD5)),
                  padding: MaterialStateProperty.all(EdgeInsets.all(16))),
              onPressed: () {},
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  "Upcoming",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              )),
          Container(
            margin: EdgeInsets.all(4),
            height: 40,
            width: 2,
            color: Color(0xffA6ABB7),
          ),
          TextButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                  padding: MaterialStateProperty.all(EdgeInsets.all(8))),
              onPressed: () {},
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "Completed",
                  style: TextStyle(fontSize: 16, color: Color(0xffA6ABB7)),
                ),
              )),
          Container(
            // padding: EdgeInsets.all(),
            margin: EdgeInsets.all(4),

            height: 40,
            width: 2,
            color: Color(0xffA6ABB7),
          ),
          TextButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                  padding: MaterialStateProperty.all(EdgeInsets.all(8))),
              onPressed: () {},
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "Canceled",
                  style: TextStyle(fontSize: 16, color: Color(0xffA6ABB7)),
                ),
              ))
        ],
      ),
    );
  }

  Row buildCalenderTime(IconData iconName, String str) {
    return Row(
      children: [
        Icon(
          iconName,
          size: 18,
          color: Colors.black45,
        ),
        Text(
          "${str}",
          style: TextStyle(fontSize: 14, color: Colors.black),
        )
      ],
    );
  }
}
