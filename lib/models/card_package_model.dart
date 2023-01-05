class CardPackageModel {
  final String image;
  final String place;

  CardPackageModel({required this.image, required this.place});
}

List<CardPackageModel> packages = [
  CardPackageModel(image: 'assets/places/image1.jpg', place: 'Italy Manarola'),
  CardPackageModel(image: 'assets/places/image2.jpg', place: 'Germany Berlin'),
  CardPackageModel(image: 'assets/places/image3.jpg', place: 'Venice Beach'),
];

List<CardPackageModel> reversePackage = [
  CardPackageModel(image: 'assets/places/image3.jpg', place: 'Venice Beach'),
  CardPackageModel(image: 'assets/places/image2.jpg', place: 'Germany Berlin'),
  CardPackageModel(image: 'assets/places/image1.jpg', place: 'Italy Manarola'),
];
