import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  List<Widget> list = [];
  int tastno = 0;
  void upgradeTask() {
    setState(() {
      tastno++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 218, 218),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            upgradeTask();
            list.add(taskWidget());
          });
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        // shadowColor: Colors.grey,
        // elevation: 10,
        leading: SizedBox(width: 10),
        centerTitle: true,
        backgroundColor:  Colors.white,
        title: Text(
          "Task Board",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(5),
              child: list[index],
            );
          }),
    );
  }

  taskWidget() {
    return Card(
        child: Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Task $tastno",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
              "Your Personal Task management and planing solution for planing your day, week & months",
              style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500)),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("03: 04 PM",
                  style: TextStyle(fontSize: 12, color: Colors.black)),
              Text("3 March 2024",
                  style: TextStyle(fontSize: 12, color: Colors.black)),
            ],
          )
        ],
      ),
    ));
  }
}
