import 'package:flutter/material.dart';
import 'package:medical_app/model/data_for_cause.dart';
import 'package:medical_app/model/model_data.dart';

class ListViewOfAfterBox extends StatelessWidget {
  ListViewOfAfterBox({
    Key? key,
  }) : super(key: key);
  var listUserData = DataForCause.genarateCause();
  var listDoctor = ModelData.doctorData();

  @override
  Widget build(BuildContext context) {
    return Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: EdgeInsets.all(16),
            child: Text(
              "What are the symptoms?",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
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
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(16)),
                  child: Center(
                      child: Text(
                    "${listUserData[index].cause}",
                    style: TextStyle(fontSize: 16),
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
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
              height: 600,
              width: double.infinity,
              // margin: EdgeInsets.all(16),
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                children: List.generate(
                    listDoctor.length,
                    (index) => Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(16),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xffFEFEFE),
                              borderRadius: BorderRadius.circular(16)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xffFFCCCD),
                                child: Image.asset(
                                  "${listDoctor[index].doctorImage}",
                                  scale: 12,
                                ),
                                radius: 30,
                              ),
                              Text(
                                "${listDoctor[index].doctorName}",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "${listDoctor[index].doctorType}",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black38),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color:
                                        Colors.amber.shade100.withOpacity(0.4)),
                                child: Text("⭐ 5.0"),
                              )
                            ],
                          ),
                        )),
              )),
        ]);
  }
}
