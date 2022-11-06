import 'package:flutter/material.dart';
import 'package:medical_app/model/model_data.dart';

class DoctorInfoPage extends StatelessWidget {
  int index;
  DoctorInfoPage(this.index);

  var listDoctorInfo = ModelData.doctorData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        padding: EdgeInsets.all(8),
        height: 100,
        width: double.infinity,
        color: Color(0xffFDFDFD),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Consulltation Price: ", style: TextStyle(fontSize: 18)),
                Text("\$50.0",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.016,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff6B5DD5)),
                ),
                onPressed: () {},
                child: Container(
                  width: 360,
                  height: 50,
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(30),
                  //     color: Color(0xff6B5DD5)),
                  child: Center(
                      child: Text("Book Appointment",
                          style: TextStyle(
                            fontSize: 16,
                          ))),
                ))
          ],
        ),
      ),
      backgroundColor: Color(0xff6B5DD5),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff6B5DD5),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_rounded,
                              color: Colors.white,
                            ))),
                    Expanded(
                        flex: 6,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.04,
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0xffFFCCCD),
                              child: Image.asset(
                                  "${listDoctorInfo[index].doctorImage}",
                                  scale: 10),
                              radius: 40,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Text(
                              "${listDoctorInfo[index].doctorName}",
                              style:
                                  TextStyle(fontSize: 26, color: Colors.white),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.005,
                            ),
                            Text(
                              "${listDoctorInfo[index].doctorType}",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Color(0xff9F97E3),
                                  child: Image.asset(
                                    "images/phoneIcon.png",
                                    scale: 4,
                                  ),
                                  radius: 20,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.04,
                                ),
                                CircleAvatar(
                                  backgroundColor: Color(0xff9F97E3),
                                  child: Image.asset(
                                    "images/massageIcon.png",
                                    scale: 4,
                                  ),
                                  radius: 20,
                                ),
                              ],
                            )
                          ],
                        )),
                    Expanded(
                        child: TextButton(
                      onPressed: () {},
                      child: Image.asset(
                        "images/3dotIcon.png",
                        scale: 2.5,
                      ),
                    )),
                  ],
                ),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Expanded(
            flex: 4,
            child: buildAboutDoctor(context),
          )
        ],
      ),
    );
  }

  Container buildAboutDoctor(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, top: 16),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xffFAFAFA),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(16), topLeft: Radius.circular(16))),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("About doctor", style: TextStyle(fontSize: 20)),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.016,
          ),
          Text("${listDoctorInfo[index].doctorInfo}",
              style: TextStyle(fontSize: 16)),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.016,
          ),
          Row(
            children: [
              Text("Reviews ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              Text("⭐ 5.0 ", style: TextStyle(fontSize: 16)),
              Text("(140)", style: TextStyle(fontSize: 16, color: Colors.grey)),
              Spacer(),
              Text("See all",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff6B5DD5),
                      fontWeight: FontWeight.w500)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.034,
              ),
            ],
          ),
          buildComment(),
          Text("Location",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.034,
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Color(0xffFFCCCD),
                child: Image.asset("images/locationIcon.png", scale: 3),
                radius: 26,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.034,
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Location",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                  Text("3216W. Grey Street, Torrento, Canada",
                      style: TextStyle(fontSize: 16, color: Colors.grey)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Container buildComment() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),

      height: 120,
      // color: Colors.grey,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: listDoctorInfo.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 16),
            padding: EdgeInsets.all(8),
            // height: 120,
            width: 260,
            decoration: BoxDecoration(
                color: Color(0xffFDFDFD),
                borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xffFFCCCD),
                        child: Image.asset("${listDoctorInfo[0].doctorImage}",
                            scale: 16),
                        radius: 26,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.016,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Maruf Robin",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "1day ago",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.amber.shade100.withOpacity(0.4)),
                        child: Text("⭐ 5.0"),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.016,
                ),
                Expanded(
                  child: Text(
                    "${listDoctorInfo[0].doctorInfo}",
                    style: TextStyle(fontSize: 14),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
