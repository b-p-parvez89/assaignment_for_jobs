import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 160,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.red, Colors.orange, Colors.yellow]
          , end: Alignment.topRight,
          begin: Alignment.bottomLeft
          ),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://th.bing.com/th/id/OIP.j-6uMVh2jxMPvzdoe4ghtAHaEK?rs=1&pid=ImgDetMain")),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
         
         Container(
          height: 160,
          width: 180,
          decoration: BoxDecoration(image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/photo/woman1.png"))),
         ),
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "30%",
                style: TextStyle(
                    fontSize: 42,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Today's Special!",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w900),
              ),
               Text(
                "Get discount for every\norder. Only valid for today",
                style: TextStyle(
                    fontSize: 11,
                    color: Colors.white,
                   ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
