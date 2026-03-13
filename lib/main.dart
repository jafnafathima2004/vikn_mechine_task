import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vikn_mechine_task/screens/filter_screen.dart';
import 'package:vikn_mechine_task/screens/login_screen.dart';
import 'package:vikn_mechine_task/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
      home: FilterScreen(),
      ),
    );
  }
}


