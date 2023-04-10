import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: Get.width/60),
          child: Text(
            "Events / Announcement",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 15.sp
            ),
          ),
        ),
        Container(
          height: Get.height/4.2,
          width: Get.width/2.4,
          margin: EdgeInsets.only(top: Get.width/60),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(9)
          ),
        )
      ],
    );
  }
}

