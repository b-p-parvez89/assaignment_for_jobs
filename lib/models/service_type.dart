import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TypeOfService extends GetxController {
  RxList data = [
    {"text": "Cleaning", "svg": "assets/icon1.svg", "color": Colors.blue[50]},
    {
      "text": "Repairing",
      "svg": "assets/icon2.svg",
      "color": Colors.orange[50]
    },
    {"text": "Painting", "svg": "assets/icon7.svg", "color": Colors.teal[50]},
    {"text": "Laundry", "svg": "assets/icon6.svg", "color": Colors.orange[50]},
    {"text": "Appliance", "svg": "assets/icon3.svg", "color": Colors.red[50]},
    {"text": "Plumbing", "svg": "assets/icon4.svg", "color": Colors.green[50]},
    {"text": "Shifting", "svg": "assets/icon4.svg", "color": Colors.cyan[50]},
    {"text": "More", "svg": "assets/More Circle.svg", "color": Colors.blue[50]}
  ].obs;

  RxList typedata = [
     {"text": "All", "isSeleccted": false},
    {"text": "Cleaning", "isSeleccted": true},
    {"text": "Repairing", "isSeleccted": false},
    {"text": "Painting", "isSeleccted": false},
    {"text": "Laundry", "isSeleccted": false},
    {"text": "Appliance", "isSeleccted": false},
    {"text": "Plumbing", "isSeleccted": false},
    {"text": "Shifting", "isSeleccted": false},
   
  ].obs;







  
}
