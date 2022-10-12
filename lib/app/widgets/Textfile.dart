import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyTextfiled extends StatelessWidget {
  MyTextfiled({Key? key, required this.iconData, required this.color})
      : super(key: key);

  final IconData iconData;
  Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.w,
      child: TextField(
        style: const TextStyle(color: Colors.green),
        decoration: InputDecoration(
          suffixIcon: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.green,
          ),
          prefixIcon: Icon(
            iconData,
            size: 25.sp,
            color: color,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(20),
          ),
          focusColor: Colors.black,
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
