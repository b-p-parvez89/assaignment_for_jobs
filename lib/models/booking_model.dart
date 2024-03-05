import 'package:get/get.dart';

class BookingModel {
  final String name;
  final String tile;
  final String isComplet;
  final String image;

  BookingModel(
      {required this.name,
      required this.tile,
      required this.isComplet,
      required this.image});
}

class BookingServies extends GetxController {
  RxList cancelledData = [
    BookingModel(
        name: "Chantal Shelburne",
        tile: "Plumbing Repair",
        isComplet: "Cancelled",
        image: "assets/photo/1.jpg"),
    BookingModel(
        name: "Benny Spanbaouer",
        tile: "Appliance Service",
        isComplet: "Cancelled",
        image: "assets/photo/2.jpg"),
    BookingModel(
        name: "Phyllis Godley",
        tile: "Laundry Service",
        isComplet: "Cancelled",
        image: "assets/photo/3.jpg"),
    BookingModel(
        name: "Maryland Winkles",
        tile: "Home Cleaning",
        isComplet: "Cancelled",
        image: "assets/photo/4.jpg")
  ].obs;

  RxList completed = [
    BookingModel(
        name: "Maryland Winkles",
        tile: "Home Cleaning",
        isComplet: "Cancelled",
        image: "assets/photo/4.jpg"),
    BookingModel(
        name: "Benny Spanbaouer",
        tile: "Appliance Service",
        isComplet: "Cancelled",
        image: "assets/photo/2.jpg"),
    BookingModel(
        name: "Chantal Shelburne",
        tile: "Plumbing Repair",
        isComplet: "Cancelled",
        image: "assets/photo/1.jpg"),
    BookingModel(
        name: "Benny Spanbaouer",
        tile: "Appliance Service",
        isComplet: "Cancelled",
        image: "assets/photo/2.jpg"),
    BookingModel(
        name: " Phyllis Godley",
        tile: "Laundry Service",
        isComplet: "Cancelled",
        image: "assets/photo/3.jpg"),
  ].obs;
}
