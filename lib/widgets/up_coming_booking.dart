import 'package:flutter/material.dart';

class UpComingBooking extends StatelessWidget {
  const UpComingBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/sad_imoji.png"))),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "you have no upcomming booking",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "You do not have a upcoming booking. Make a new booking by clicking the button below",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
                child: Center(
                  child: Text(
                    "Make New Booking",
                    style: TextStyle(fontSize: 16, color: Colors.blue[700], fontWeight: FontWeight.bold),
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(30)))
          ],
        ),
      ),
    );
  }
}
