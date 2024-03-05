import 'package:assaignment_for_jobs/widgets/top_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/rating.dart';

class ServiceDetails extends StatefulWidget {
  const ServiceDetails({super.key});

  @override
  State<ServiceDetails> createState() => _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                height: 300,
                width: double.infinity,
                color: Color.fromARGB(255, 244, 59, 155),
                child: Image.asset(
                  "assets/photo/woman1.png",
                  height: 280,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              Positioned(
                  top: 30,
                  left: 12,
                  child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )))
            ]),
            Container(
              height: 400,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, left: 20, right: 16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "House Cleaning",
                          style: TextStyle(
                              fontSize: 42,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        Row(
                          children: [
                            Text(
                              " Jenny Wilson",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.blue),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            StarRating(
                              rating: 4.5,
                              starSize: 26,
                              fontsize: 14,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text("(1345 reviews)",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black87))
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.blue.withOpacity(0.1)),
                              child: Center(
                                  child: Text("cleaning",
                                      style:
                                          TextStyle(color: Colors.blue[700]))),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.location_on,
                              color: Colors.blue[700],
                            ),
                            Text(
                              "255 Grand Park Avenue, New Your",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text("\$20",
                                style: TextStyle(
                                    fontSize: 32,
                                    color: Colors.blue[900],
                                    fontWeight: FontWeight.w700)),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "(Floor price)",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            )
                          ],
                        ),
                        Divider(),
                        Text("About me",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: secondHalf.isEmpty
                              ? new Text(firstHalf)
                              : new Column(
                                  children: <Widget>[
                                    new Text(
                                      flag
                                          ? (firstHalf + "...")
                                          : (firstHalf + secondHalf),
                                    ),
                                    new InkWell(
                                      child: new Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          new Text(
                                            flag ? "show more" : "show less",
                                            style: new TextStyle(
                                                color: Colors.blue,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                      onTap: () {
                                        setState(() {
                                          flag = !flag;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                        ),
                        SizedBox(height: 20,),
                        TopMenu(text: "Photos & Video"),
                        Container(
                          height: 210,
                          child: GridView.builder(
                            itemCount: 4,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/photo/${index+1}.jpg"))),
                                ),
                              );
                            },
                          ),
                        )
                      ]),
                ),
              ),
            )
          ],
        ),
        bottomSheet: Container(
          height: 80,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            GestureDetector(
                child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue.withOpacity(.2)),
              child: Center(
                child: Text(
                  "Message",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 36, 4, 155)),
                ),
              ),
            )),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
                child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.blue),
              child: Center(
                child: Text(
                  "Book",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ))
          ]),
        ));
  }

  final String description =
      "Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.";

  late String firstHalf;
  late String secondHalf;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (description.length > 50) {
      firstHalf = description.substring(0, 50);
      secondHalf = description.substring(50, description.length);
    } else {
      firstHalf = description;
      secondHalf = "";
    }
  }
}
