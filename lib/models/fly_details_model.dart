class FlyDetailsModel {
  final String porcent, begin, finish;

  FlyDetailsModel(
      {required this.porcent, required this.begin, required this.finish});
}

List<FlyDetailsModel> flyDetailsList = [
  FlyDetailsModel(porcent: "100", begin: "7:30 AM", finish: "9:30 PM"),
  FlyDetailsModel(porcent: "90", begin: "7:50 AM", finish: "9:50 PM"),
  FlyDetailsModel(porcent: "80", begin: "8:10 AM", finish: "10:10 PM"),
];
