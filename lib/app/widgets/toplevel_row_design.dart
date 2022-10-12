import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoodel_task/app/appcontroller/homeview_controller.dart';
import 'package:sizer/sizer.dart';

class Topleveldesign extends StatelessWidget {
  Topleveldesign({Key? key}) : super(key: key);

  final homecontroller = Get.put(Homeviewcontroller());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h),
      child: Obx(() {
        return Row(
          children: [
            InkWell(
              onTap: () {
                homecontroller.taped.value = false;
              },
              child: Container(
                width: 22.w,
                height: 6.2.h,
                decoration: BoxDecoration(
                  color: homecontroller.taped.value == false
                      ? const Color.fromARGB(255, 25, 145, 244)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(13.sp),
                ),
                child: Center(
                  child: Text(
                    "Send",
                    style: TextStyle(
                        color: homecontroller.taped.value == false
                            ? Colors.white
                            : Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 3.w,
            ),
            InkWell(
              onTap: () {
                homecontroller.taped.value = true;
              },
              child: Container(
                width: 22.w,
                height: 6.2.h,
                decoration: BoxDecoration(
                  color: homecontroller.taped.value == true
                      ? Colors.blue
                      : Colors.white,
                  borderRadius: BorderRadius.circular(13.sp),
                ),
                child: Center(
                  child: Text(
                    "Fetch me",
                    style: TextStyle(
                        color: homecontroller.taped.value == true
                            ? Colors.white
                            : Colors.black),
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
