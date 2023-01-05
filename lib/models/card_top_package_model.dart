class CardTopPackageModel {
  final String image, country, city;

  CardTopPackageModel(
      {required this.image, required this.country, required this.city});
}

List<CardTopPackageModel> topPackages = [
  CardTopPackageModel(
      image: 'assets/country/image1.jpg', country: 'Spain', city: 'Barcelona'),
  CardTopPackageModel(
      image: 'assets/country/image2.jpg', country: 'France', city: 'Paris'),
];
