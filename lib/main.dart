import 'package:cricstreak/Screens/navigator/view/navigatorPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    Sizer(builder: (context, orientation, deviceType) => GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => NavigatorPage(),
      },
    ),)
  );
}
