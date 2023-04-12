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
        // Padding(
        //   padding: EdgeInsets.only(top: Get.width/60),
        //   child: Text(
        //     "Events / Announcement",
        //     style: TextStyle(
        //       color: Colors.white,
        //       fontWeight: FontWeight.w500,
        //       fontSize: 15.sp
        //     ),
        //   ),
        // ),
        // Container(
        //   height: Get.height/4.2,
        //   width: Get.width/2.4,
        //   margin: EdgeInsets.only(top: Get.width/60),
        //   decoration: BoxDecoration(
        //     color: Colors.red,
        //     borderRadius: BorderRadius.circular(9)
        //   ),
        // )
        Container(
          margin: EdgeInsets.only(top: Get.width/40),
          height: Get.height/9,
          width: Get.width/1.3,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF8E58EF),
                Color(0xFF537AF3),
              ]
            ),
            borderRadius: BorderRadius.circular(15)
          ),
          padding: EdgeInsets.only(left: Get.width/40,top: Get.width/25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "100% BONUS AND IC ON CASH",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: Get.width/60),
                child: Text(
                  "GET UPTO BONUS AND T20 IC ON FIRST ADD CASH",
                  style: TextStyle(
                    color: Color(0xFFFFE400),
                    fontWeight: FontWeight.bold,
                    fontSize: 7.sp
                  ),
                ),
              ),
              Container
                (
                height: Get.height/30,
                width: Get.width/4.5,
                margin: EdgeInsets.only(top: Get.width/80),
                decoration: BoxDecoration(
                  color: Color(0xFFFFE400),
                  borderRadius: BorderRadius.circular(6)
                ),
                alignment: Alignment.center,
                child: Text(
                  "Claim Coins",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

