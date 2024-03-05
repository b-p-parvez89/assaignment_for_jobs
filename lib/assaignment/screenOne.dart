import 'package:assaignment_for_jobs/assaignment/ScreenTwo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 100,),
       Container(child: Column(children: [ Text(
          "Welcome to",
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
        ),
         Text(
          "Plan IT",
          style: TextStyle(
              fontSize: 48, color: Colors.black, fontWeight: FontWeight.bold),
        ),],),),
       
        Container(child: Column(children: [
          Text(
          "Your Personal Task management\nand planing solution",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
        ), 
        
        SizedBox(height: 10,),
        Align(
          alignment: Alignment.center,
          child: CupertinoButton(
            
            color: Colors.black,
            child: Text("Let's Go Started"), onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context) => ScreenTwo(),));
            }),
        ),
        SizedBox(height: 100,)
        ],),)
      ],
    ));
  }
}
