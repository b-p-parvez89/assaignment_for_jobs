// ignore_for_file: unused_local_variable

import 'dart:async';

import 'package:assaignment_for_jobs/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplshScreen extends StatelessWidget {
  const SplshScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MainClass mainClass = Get.put(MainClass());

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 200,
              width: 125,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/logo.png"))),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
              height: 80,
              width: 80,
              child: Lottie.asset("assets/vector/loader.json")),
          // SizedBox(
          //   height:20,
          // )
        ],
      ),
    );
  }
}

class MainClass extends GetxController {
  @override
  void onInit() {
    navigate();
    super.onInit();
  }

  navigate() {
    Timer(
        Duration(seconds: 5),
        () => Get.to(LoginScreen(),
            transition: Transition.topLevel,
            duration: Duration(milliseconds: 2000)));
  }
}
