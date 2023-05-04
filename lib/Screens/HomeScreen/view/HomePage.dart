import 'package:cricstreak/Screens/navigator/controller/navigatorController.dart';
import 'package:cricstreak/Utils/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NavigatorController navigatorController = Get.put(NavigatorController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(physics: BouncingScrollPhysics(),
      child: Column(
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
          //     color: Color(0xff021852),
          //     borderRadius: BorderRadius.circular(9)
          //   ),
          // )
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15),
                  height: 95,
                  width: 300,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF8E58EF),
                            Color(0xFF537AF3),
                          ]),
                      borderRadius: BorderRadius.circular(15)),
                  padding: EdgeInsets.only(left: 12, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "100% BONUS AND IC ON CASH",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: Get.width / 60),
                              child: Text(
                                "GET UPTO BONUS AND T20 IC ON FIRST ADD CASH",
                                style: TextStyle(
                                    color: Color(0xFFFFE400),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 9),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 90,
                              margin: EdgeInsets.only(top: Get.width / 80),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFE400),
                                  borderRadius: BorderRadius.circular(6)),
                              alignment: Alignment.center,
                              child: Text(
                                "Claim Coins",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        margin: EdgeInsets.only(left: 15, bottom: 15),
                        // color: Color(0xff021852),
                        // alignment: Alignment.center,
                        child: Image.asset(
                          "assets/image/shopping_bag.png",
                          fit: BoxFit.fill,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  height: 95,
                  width: 300,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF8E58EF),
                            Color(0xFF537AF3),
                          ]),
                      borderRadius: BorderRadius.circular(15)),
                  padding: EdgeInsets.only(left: 12, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "100% BONUS AND IC ON CASH",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: Get.width / 60),
                              child: Text(
                                "GET UPTO BONUS AND T20 IC ON FIRST ADD CASH",
                                style: TextStyle(
                                    color: Color(0xFFFFE400),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 9),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 90,
                              margin: EdgeInsets.only(top: Get.width / 80),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFE400),
                                  borderRadius: BorderRadius.circular(6)),
                              alignment: Alignment.center,
                              child: Text(
                                "Claim Coins",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        margin: EdgeInsets.only(left: 15, bottom: 15),
                        // color: Color(0xff021852),
                        // alignment: Alignment.center,
                        child: Image.asset(
                          "assets/image/shopping_bag.png",
                          fit: BoxFit.fill,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 330,
                  decoration: BoxDecoration(
                    color: Color(0xff021852),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  alignment: Alignment.centerRight,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        "assets/image/fantacy.png",
                        fit: BoxFit.fill,
                      ),
                      Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: InkWell( onTap: () {
                          navigatorController.NavigatIndex.value=1;
                        },
                          child: Widgets.widgets
                              .MyPlayButton(title: "Fantacy", player: "1.2 cr"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 13,
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 160,
                      decoration: BoxDecoration(
                          color: Color(0xff021852),
                          borderRadius: BorderRadius.circular(16)),
                      alignment: Alignment.bottomCenter,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            "assets/image/rummy.png",
                            fit: BoxFit.fill,
                          ),
                          Container(
                            height: double.infinity,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child:  InkWell(
                              onTap: () {
                                launchUrl(Uri.parse("https://poki.com/en/g/rummy"));
                              },
                              child: Widgets.widgets
                                  .MyPlayButton(title: "Rummy", player: "4k"),
                            ),
                          ),
                        ],
                      ),

                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 160,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Color(0xff021852),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.bottomCenter,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            "assets/image/football.png",
                            fit: BoxFit.fill,
                          ),
                          Container(
                            height: double.infinity,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: InkWell(
                              onTap: () {
                                launchUrl(Uri.parse("https://poki.com/en/g/football-masters"));
                              },
                              child: Widgets.widgets
                                  .MyPlayButton(title: "Football", player: "10k"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 15,),

        ],
      ),
    );
  }
}
