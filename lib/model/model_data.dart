class ModelData {
  String doctorName;
  String doctorImage;
  String doctorType;
  String appointDate;
  String appointTime;
  String doctorInfo;

  ModelData(this.doctorName, this.doctorType, this.doctorImage,
      this.appointDate, this.appointTime, this.doctorInfo);

  static List<ModelData> doctorData() {
    return [
      ModelData(
          "Dr. Chris Fizer",
          "Prediatrician",
          "images/1.png",
          "12/11/2022",
          "10:30am",
          "Dr.Chris Fizer is an experienced specialist who is constantly working to improve his skill."),
      ModelData(
          "Dr. Maruf Robin",
          "Prediatrician",
          "images/2.png",
          "12/11/2022",
          "10:30am",
          "Dr.Chris Fizer is an experienced specialist who is constantly working to improve his skill."),
      ModelData(
          "Dr. Robiul",
          "Prediatrician",
          "images/3.png",
          "12/11/2022",
          "10:30am",
          "Dr.Chris Fizer is an experienced specialist who constantly working to improve his skill."),
      ModelData(
          "Dr. Sazid",
          "Prediatrician",
          "images/4.png",
          "12/11/2022",
          "10:30am",
          "Dr.Chris Fizer is an experienced specialist who is constantly working to improve his skill."),
      ModelData(
          "Dr. Rayhan",
          "Prediatrician",
          "images/5.png",
          "12/11/2022",
          "10:30am",
          "Dr.Chris Fizer is an experienced specialist who is constantly working to improve his skill."),
      ModelData(
          "Dr. Mehedi",
          "Prediatrician",
          "images/6.png",
          "12/11/2022",
          "10:30am",
          "Dr.Chris Fizer is an experienced specialist who is constantly working to improve his skill.")
    ];
  }
}
