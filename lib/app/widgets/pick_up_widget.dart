import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:toggle_switch/toggle_switch.dart';

class PickUp extends StatelessWidget {
  const PickUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.3.h),
      child: Row(
        children: [
          const Text(
            "Time",
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: 6.w,
          ),
          ToggleSwitch(
            radiusStyle: true,
            cornerRadius: 15,
            borderWidth: 0.6,
            borderColor: const [Colors.grey],
            minWidth: 15.w,
            minHeight: 6.h,
            fontSize: 11.0.sp,
            initialLabelIndex: 1,
            activeBgColor: const [Colors.blue],
            activeFgColor: Colors.white,
            inactiveBgColor: Colors.white,
            inactiveFgColor: Colors.grey[900],
            totalSwitches: 2,
            labels: const [
              'AM',
              'PM',
            ],
            onToggle: (index) {},
          ),
          SizedBox(
            width: 5.w,
          ),
          ToggleSwitch(
            radiusStyle: true,
            cornerRadius: 15.sp,
            borderWidth: 0.6,
            borderColor: const [Colors.grey],
            minWidth: 15.w,
            minHeight: 6.h,
            fontSize: 11.0.sp,
            initialLabelIndex: -1,
            activeBgColor: const [Colors.blue],
            activeFgColor: Colors.white,
            inactiveBgColor: Colors.white,
            inactiveFgColor: Colors.grey[900],
            totalSwitches: 2,
            labels: const [
              '12:00',
              '11:00',
            ],
            onToggle: (index) {},
          ),
        ],
      ),
    );
  }
}
