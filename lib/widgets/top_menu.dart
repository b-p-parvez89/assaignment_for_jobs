import 'package:flutter/material.dart';

class TopMenu extends StatelessWidget {
final String text;
TopMenu({required this.text});

  @override
  Widget build(BuildContext context) {
    return  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  TextButton(onPressed: () {}, child: Text("See All"))
                ],
              );
  }
}