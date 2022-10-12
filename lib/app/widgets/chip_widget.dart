import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Chipwidget extends StatelessWidget {
  const Chipwidget({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
        onSelected: (value) {},
        padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.h),
        disabledColor: const Color.fromARGB(255, 242, 242, 242),
        labelStyle: const TextStyle(color: Colors.black),
        backgroundColor: const Color.fromARGB(255, 235, 235, 235),
        selectedColor: Colors.blue,
        label: Text(name),
        pressElevation: 5,
        selected: false);
  }
}
