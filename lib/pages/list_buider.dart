import 'package:flutter/material.dart';

import '../model/model_data.dart';

class ListBuilder extends StatelessWidget {
  ListBuilder({Key? key}) : super(key: key);
  var ListUserData = ModelData.doctorData();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFEEE6),
      height: (220 * ListUserData.length).toDouble(),
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: ListUserData.length,
        itemBuilder: (context, index) {
          return Container(
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
                            "${ListUserData[index].doctorName}",
                            style: TextStyle(
                              fontSize: 20,
                              // fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "${ListUserData[index].doctorType}",
                            style: TextStyle(
                                fontSize: 16,
                                // fontWeight: FontWeight.w500,
                                color: Colors.black45),
                          )
                        ],
                      )),
                  CircleAvatar(
                    backgroundColor: Color(0xffFFCCCD),
                    child: Image.asset("${ListUserData[index].doctorImage}",
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
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildCalenderTime(Icons.calendar_month_rounded,
                          ListUserData[index].appointDate),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      buildCalenderTime(Icons.access_time_filled_outlined,
                          ListUserData[index].appointTime),
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          // margin: EdgeInsets.only(top: 2),

                          padding: EdgeInsets.symmetric(
                              vertical: 14, horizontal: 50),
                          // height: 40,
                          // width: 140,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Text(
                              "Cancel",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          // margin: EdgeInsets.only(top: 16),

                          padding: EdgeInsets.symmetric(
                              vertical: 14, horizontal: 40),
                          // height: 40,
                          // width: 140,
                          decoration: BoxDecoration(
                              color: Color(0xff6B5DD5),
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Text(
                              "Reschdule",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ]),
          );
        },
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
