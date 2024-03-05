import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../models/service_type.dart';

class MenuGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   TypeOfService service =Get.put(TypeOfService());

    return Container(
      height: 170,
      width: double.infinity,
      child: GridView.builder(
        itemCount: service.data.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (context, index) {
          var _data = service.data[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: GestureDetector(
              child: Container(
                  height: 100,
                  width: 80,
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: _data["color"]),
                          padding: EdgeInsets.all(18),
                          child: SvgPicture.asset(_data["svg"])),
                      Text(
                        _data["text"],
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                      )
                    ],
                  )),
            ),
          );
        },
      ),
    );
  }
}


