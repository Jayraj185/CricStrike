import 'package:cricstreak/Screens/navigator/controller/navigatorController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../news/controller/newsController.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  NavigatorController navigatorController = Get.put(NavigatorController());
  NewsController newsController = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: navigatorController.NavigatIndex.value != 2
                ? AppBar(
                    actions: [
                      navigatorController.NavigatIndex.value == 0 ||
                              navigatorController.NavigatIndex.value == 1 ||
                              navigatorController.NavigatIndex.value == 4
                          ? Padding(
                              padding: EdgeInsets.only(
                                right: 10,
                                top: 6,
                                bottom: 6,
                              ),
                              child: InkWell(
                                onTap: () {
                                  navigatorController.NavigatIndex.value = 3;
                                },
                                child: Container(
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xfffffbae),
                                        Color(0xffefd473),
                                      ],
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 6, bottom: 6, left: 4, right: 3),
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "Add Cash",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "₹0",
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Image.asset(
                                          "assets/image/plus.png",
                                          height: 18,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Container(),
                    ],
                    title: Row(
                      children: [
                        Image.asset(
                          "assets/image/applogo.png",
                          height: 30,
                        ),
                        Text(
                          " CRICSTRIKE",
                        ),
                      ],
                    ),
                    leading: Padding(
                      padding: EdgeInsets.only(left: 10, top: 8, bottom: 8),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://w7.pngwing.com/pngs/420/567/png-transparent-avatar-male-man-portrait-avatars-xmas-giveaway-icon.png",
                        ),
                      ),
                    ),
                    backgroundColor: Color(0xff021852),
                  )
                : AppBar(
                    bottom: TabBar(
                      onTap: (value) {
                        if (newsController.gamename.value == 1) {
                          newsController.gamename.value = 0;
                        }else{
                          newsController.gamename.value = 1;
                        }
                      },
                      indicatorColor: Colors.white,
                      automaticIndicatorColorAdjustment: true,
                      tabs: [
                        Tab(
                          text: "Cricket",
                        ),
                        Tab(
                          text: "Football",
                        ),
                      ],
                    ),
                    leading: Padding(
                      padding: EdgeInsets.only(left: 10, top: 8, bottom: 8),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://w7.pngwing.com/pngs/420/567/png-transparent-avatar-male-man-portrait-avatars-xmas-giveaway-icon.png",
                        ),
                      ),
                    ),
                    title: Row(
                      children: [
                        Image.asset(
                          "assets/image/applogo.png",
                          height: 30,
                        ),
                        Text(
                          " CRICNEWS",
                        ),
                      ],
                    ),
                    backgroundColor: Color(0xff021852),
                  ),
            body: navigatorController.NavigatIndex.value != 3
                ? Container(
                    height: double.infinity,
                    width: double.infinity,
                    padding: navigatorController.NavigatIndex.value==2?EdgeInsets.symmetric(horizontal: 0):EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xD9021852),
                          Color(0xb3021852),
                          Color(0xd9021852),
                        ],
                      ),
                    ),
                    child: Obx(() => navigatorController
                        .Screens[navigatorController.NavigatIndex.value]),
                  )
                : Container(
                    height: double.infinity,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Color(0xD9DFE5F8),
                    ),
                    child: Obx(() => navigatorController
                        .Screens[navigatorController.NavigatIndex.value]),
                  ),
            bottomNavigationBar: Obx(
              () => BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: false,
                currentIndex: navigatorController.NavigatIndex.value,
                showUnselectedLabels: false,
                onTap: (value) {
                  navigatorController.NavigatIndex.value = value;
                },
                backgroundColor: Color(0xff021852),
                items: [
                  BottomNavigationBarItem(
                    activeIcon:
                        Image.asset("assets/image/activehome.png", height: 25),
                    backgroundColor: Color(0xff021852),
                    icon: Image.asset("assets/image/home.png", height: 25),
                    label: "",
                  ),
                  BottomNavigationBarItem(
                      backgroundColor: Color(0xff021852),
                      activeIcon: Image.asset("assets/image/activecricket.png",
                          height: 25),
                      icon: Image.asset("assets/image/cricket.png", height: 25),
                      label: ""),
                  BottomNavigationBarItem(
                      backgroundColor: Color(0xff021852),
                      activeIcon: Image.asset("assets/image/activenews.png",
                          height: 26),
                      icon: Image.asset("assets/image/news.png", height: 23),
                      label: ""),
                  BottomNavigationBarItem(
                      backgroundColor: Color(0xff021852),
                      activeIcon: Image.asset("assets/image/activewallet.png",
                          height: 25),
                      icon: Image.asset("assets/image/wallet.png", height: 25),
                      label: ""),
                  BottomNavigationBarItem(
                      backgroundColor: Color(0xff021852),
                      activeIcon: Image.asset("assets/image/activegames.png",
                          height: 25),
                      icon: Image.asset("assets/image/game.png", height: 25),
                      label: ""),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
