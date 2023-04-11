import 'package:cricstreak/Screens/navigator/view/navigatorPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => NavigatorPage(),
      },
    ),
  );
}
