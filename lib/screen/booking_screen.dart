import 'package:assaignment_for_jobs/widgets/up_coming_booking.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/cancaled_servies.dart';
import '../widgets/completed_servise.dart';

class BookinkScreen extends StatefulWidget {
  const BookinkScreen({super.key});

  @override
  State<BookinkScreen> createState() => _BookinkScreenState();
}

class _BookinkScreenState extends State<BookinkScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                "My Booking",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              leading: Container(
                height: 12,
                width: 12,
                padding: EdgeInsets.all(10),
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: SvgPicture.asset(
                    "assets/logo.svg",
                    color: Colors.white,
                  ),
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      size: 36,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Container(
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                            border: Border.all(), shape: BoxShape.circle),
                        child: Icon(Icons.more_horiz_sharp))),
              ],
              bottom: TabBar(tabs: [
                Tab(
                  text: "Upcoming",
                ),
                Tab(
                  text: "Completed",
                ),
                Tab(
                  text: "Cancelled",
                )
              ]),
            ),
            body: TabBarView(children: [
              UpComingBooking(),
             CompletedServisec(),
              CanceledServisec()
            ])));
  }
}
