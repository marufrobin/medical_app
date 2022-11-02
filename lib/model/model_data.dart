class ModelData {
  String doctorName;
  String doctorImage;
  String doctorType;
  String appointDate;
  String appointTime;

  ModelData(this.doctorName, this.doctorType, this.doctorImage,
      this.appointDate, this.appointTime);

  List<ModelData> doctorData() {
    return [
      ModelData("Dr.Chris Fizer", "Prediatrician", "images/1", "12/11/2022",
          "10:30am"),
    ];
  }
}
