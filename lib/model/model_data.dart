class ModelData {
  String doctorName;
  String doctorImage;
  String doctorType;
  String appointDate;
  String appointTime;

  ModelData(this.doctorName, this.doctorType, this.doctorImage,
      this.appointDate, this.appointTime);

  static List<ModelData> doctorData() {
    return [
      ModelData("Dr.Chris Fizer", "Prediatrician", "images/1.png", "12/11/2022",
          "10:30am"),
      ModelData("Dr.Chris Fizer", "Prediatrician", "images/2.png", "12/11/2022",
          "10:30am"),
      ModelData("Dr.Chris Fizer", "Prediatrician", "images/3.png", "12/11/2022",
          "10:30am"),
      ModelData("Dr.Chris Fizer", "Prediatrician", "images/4.png", "12/11/2022",
          "10:30am"),
      ModelData("Dr.Chris Fizer", "Prediatrician", "images/5.png", "12/11/2022",
          "10:30am"),
      ModelData("Dr.Chris Fizer", "Prediatrician", "images/6.png", "12/11/2022",
          "10:30am"),
    ];
  }
}
