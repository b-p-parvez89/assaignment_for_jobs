import 'package:assaignment_for_jobs/models/booking_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CanceledServisec extends StatelessWidget {
  const CanceledServisec({super.key});

  @override
  Widget build(BuildContext context) {
    BookingServies servies = Get.put(BookingServies());
    return ListView.builder(
      itemCount: servies.cancelledData.length,
      itemBuilder: (context, index) {
        var data = servies.cancelledData[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue[200],
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(data.image))),
                ),
                SizedBox(
                  width: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data.tile,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text(
                          data.name,
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        Container(
                          height: 30,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.red),
                          child: Center(
                            child: Text(
                              "Cancelled",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        )
                      ]),
                ),
               
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue.withOpacity(.2)),
                      child:
                          IconButton(onPressed: () {}, icon: Icon(Icons.message,color:Colors.blue[700])),
                    
                  ),
              )
              ],
            ),
          ),
        );
      },
    );
  }
}
