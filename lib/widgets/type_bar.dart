import 'package:assaignment_for_jobs/models/service_type.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TypeBar extends StatefulWidget {
  const TypeBar({super.key});

  @override
  State<TypeBar> createState() => _TypeBarState();
}

class _TypeBarState extends State<TypeBar> {
  TypeOfService data = Get.put(TypeOfService());
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(8, (index) {
          var _data = data.typedata[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (_selectedIndex == index) {
                    _selectedIndex = -1; // Deselect if already selected
                  } else {
                    _selectedIndex = index; // Select the tapped item
                  }
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: _selectedIndex == index
                        ? Color.fromARGB(255, 5, 72, 131)
                        : Colors.white,
                    border: Border.all(
                        color: Color.fromARGB(255, 5, 72, 131), width: 3)),
                child: Center(
                  child: Text(
                    _data["text"],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: _selectedIndex == index
                          ? FontWeight.w700
                          : FontWeight.normal,
                      color: _selectedIndex == index
                          ? Colors.white
                          : Color.fromARGB(255, 5, 72, 131),
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
