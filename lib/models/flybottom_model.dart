class FlyBottomModel {
  final String porcent, begin, finish;

  FlyBottomModel(
      {required this.porcent, required this.begin, required this.finish});
}

List<FlyBottomModel> flyBottomList = [
  FlyBottomModel(porcent: "100", begin: "7:30 AM", finish: "9:30 PM"),
  FlyBottomModel(porcent: "90", begin: "7:50 AM", finish: "9:50 PM"),
  FlyBottomModel(porcent: "80", begin: "8:10 AM", finish: "10:10 PM"),
];
