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
        padding: const EdgeInsets.all(8.0),
        // height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Schedule",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              padding: EdgeInsets.all(4),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.grey.shade400.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(16)),
              child: Row(
                children: [
                  TextButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16))),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xff6B5DD5)),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(16))),
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
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16))),
                          backgroundColor: MaterialStateProperty.all(
                            Colors.grey.shade400.withOpacity(0.5),
                          ),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(16))),
                      onPressed: () {},
                      child: Container(
                        child: Text(
                          "Completed",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      )),
                  Spacer(),
                  TextButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16))),
                          backgroundColor: MaterialStateProperty.all(
                            Colors.grey.shade400.withOpacity(0.5),
                          ),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(16))),
                      onPressed: () {},
                      child: Container(
                        child: Text(
                          "Canceled",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ))
                ],
              ),
            ),
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
              margin: EdgeInsets.all(16),
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
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "${ListUserData[0].doctorType}",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black45),
                            )
                          ],
                        )),
                    Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        backgroundColor: Color(0xffFFCCCD),
                        child: Image.asset("${ListUserData[0].doctorImage}",
                            scale: 10),
                        radius: 40,
                      ),
                    )
                  ],
                )),
                Divider(
                  thickness: 4,
                  endIndent: 8,
                  color: Colors.black54,
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
                          buildCalenderTime(Icons.access_time_filled_outlined,
                              ListUserData[0].appointTime),
                          // Spacer(),
                          SizedBox(
                            width: 8,
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
                      Spacer(),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 40,
                              width: 140,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
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
                              height: 40,
                              width: 140,
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
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
        )
      ],
    );
  }
}
