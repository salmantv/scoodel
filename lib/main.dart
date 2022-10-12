import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'app/screens/homeview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MyHomePage(),
          theme: ThemeData(
            textTheme: const TextTheme(),
            primarySwatch: Colors.blue,
            iconTheme: const IconThemeData(color: Colors.black),
          ),
        );
      },
    );
  }
}
