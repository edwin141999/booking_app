class HotelDetailsModel {
  final String image,title;

  HotelDetailsModel({required this.image, required this.title});
}

List<HotelDetailsModel> hotelDetailsList = [
  HotelDetailsModel(image: "assets/images/details1.jpg", title: "Water Hotel"),
  HotelDetailsModel(image: "assets/images/details2.jpg", title: "Beach Hotel"),
];
