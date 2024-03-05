import 'package:assaignment_for_jobs/widgets/rating.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/service_data.dart';
import '../screen/service_details_Page.dart';

class Servicer extends StatefulWidget {
  const Servicer({super.key});

  @override
  State<Servicer> createState() => _ServicerState();
}

class _ServicerState extends State<Servicer> {
  ServiceData serviceData = Get.put(ServiceData());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 520,
      child: ListView.builder(
        itemCount: serviceData.service_data.length,
        itemBuilder: (context, index) {
          var data = serviceData.service_data[index];
          return GestureDetector(
            onTap: (){
              Get.to(ServiceDetails());
            },
            child: Card(
                    
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue[200],
                        image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage("assets/photo/woman1.png"))),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                   
                     children: [
                      Text(
                        data.name,
                        style: TextStyle(fontSize: 12, color: Colors.black54),
                      ),
                      Text(data.title,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w700)),
                      Text("\$${data.pay}",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.blueAccent[700],
                              fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          StarRating(
                            rating: data.reting,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("|"),
                          SizedBox(
                            width: 10,
                          ),
                          Text("${data.reviews} reviews",
                              style: TextStyle(fontSize: 14, color: Colors.black87))
                        ],
                      )
                    ]),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: data.isBookmark == true
                        ? IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.bookmark, color: Colors.blue))
                        : IconButton(
                            onPressed: () {},
                            icon:
                                Icon(Icons.bookmark_border, color: Colors.blue)),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
