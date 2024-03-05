import 'package:get/get.dart';

class SecviceModel {
  final String name;
  final String title;
  final int pay;
  final double reting;
  final int reviews;
  final String image;
  final bool isBookmark;

  SecviceModel( 
      {required this.name,
      required this.title,
      required this.image,
      required this.isBookmark, 
      required this.pay,
      required this.reting,
      required this.reviews});
}

class ServiceData extends GetxController {
  RxList service_data = [
    SecviceModel(
        name: "Kylee Danford",
        title: "House Cleaning",
        image: "assets/photo/1.jpg",
        pay: 25,
        reting: 4.8,
        isBookmark:true,
        reviews: 8289),
    SecviceModel(
        name: "Alfonzom Schuessler",
        title: "Floor Cleaning",
        image: "assets/photo/2.jpg",
        isBookmark:false,
        pay: 20,
        reting: 4.9,
        reviews: 6182),
    SecviceModel(
        name: "Sankuanita Ordonez",
        image: "assets/photo/3.jpg",
        title: "Washing Cloathes",
        isBookmark:true,
        pay: 22,
        reting: 4.7,
        reviews: 7939),
    SecviceModel(
        name: "Freida Varnes",
        image: "assets/photo/4.jpg",
        title: "Bathroom Cleaning",
        isBookmark:false,
        pay: 24,
        reting: 4.9,
        reviews: 9182)
  ].obs;
}
