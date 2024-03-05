import 'package:assaignment_for_jobs/widgets/top_menu.dart';
import 'package:flutter/material.dart';

import '../widgets/menuGrid.dart';
import '../widgets/servicer_list.dart';
import '../widgets/specialOffres.dart';
import '../widgets/type_bar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none)),
            IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_border))
          ],
          leading: Padding(
            padding: const EdgeInsets.only(
              left: 12,
            ),
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://scontent.fdac178-1.fna.fbcdn.net/v/t39.30808-6/271534329_464443155297368_2397664451000129410_n.jpg?stp=c0.169.1536.1536a_dst-jpg_s851x315&_nc_cat=105&ccb=1-7&_nc_sid=3d9721&_nc_eui2=AeFrddH_RD5DectkQswY0B8XX-F_GDZ2Wtdf4X8YNnZa16Y0rQjjdU_mjNm9PFmmwyYFWzk2G-aH7MEAZ3GC9Cf2&_nc_ohc=9ZS22Nc69ygAX8akaW_&_nc_ht=scontent.fdac178-1.fna&oh=00_AfB4qK2V4njnveOBL3HAuEXsGPlVOfcZ99ltmJ_1ZZfrSw&oe=65E8B2F2"))),
            ),
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good Morning 👋",
                style: TextStyle(fontSize: 14),
              ),
              Text("Md Parvez Ali",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800))
            ],
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromARGB(31, 163, 162, 162)),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.black26),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black26,
                      ),
                      suffixIcon: Icon(
                        Icons.filter_list,
                        color: Colors.black26,
                      )),
                ),
              ),
             TopMenu(text: "Special Offers",),
              SpecialOffers(),
              TopMenu(text: "Services"),
              MenuGrid(),
              TopMenu(text: "Most Popular Services"),
              TypeBar(),
              Servicer()
            ],
          ),
        ),
      ),
    );
  }
}
