import 'package:flutter/material.dart';
import 'package:scoodel_task/app/widgets/Textfile.dart';
import 'package:scoodel_task/app/widgets/chip_widget.dart';
import 'package:scoodel_task/app/widgets/pick_up_widget.dart';
import 'package:scoodel_task/app/widgets/toplevel_row_design.dart';
import 'package:sizer/sizer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 50,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            )),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.description),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.foggy),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 1.h,
              ),
              Topleveldesign(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 5.h),
                child: Row(
                  children: const [
                    Text(
                      "Details",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              MyTextfiled(
                  color: Colors.green, iconData: Icons.location_on_outlined),
              SizedBox(
                height: 3.h,
              ),
              MyTextfiled(
                color: Colors.red,
                iconData: Icons.flag,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 5.h),
                child: Row(
                  children: const [
                    Text(
                      "Pick Up",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const PickUp(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 7.h),
                child: Row(
                  children: const [
                    Text(
                      "Item information",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Chipwidget(name: "Daily necessities"),
                  Chipwidget(name: "Food"),
                  Chipwidget(name: "Document"),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Chipwidget(name: "Clothing"),
                  Chipwidget(name: "Digital product"),
                  Chipwidget(name: "Other"),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    "Totel price",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "\$48,80",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              SizedBox(
                width: 90.w,
                height: 8.h,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.sp)))),
                  onPressed: () {},
                  child: const Text("Submit"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
