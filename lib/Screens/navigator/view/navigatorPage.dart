import 'package:cricstreak/Screens/navigator/controller/navigatorController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  NavigatorController navigatorController = Get.put(NavigatorController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.only(right: Get.width/40,top: Get.width/60,bottom: Get.width/60),
              child: Container(
                width: Get.width/5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,
                    colors: [
                      Color(0xfffffbae),
                      Color(0xffefd473),
                    ],
                  ),
                ),
              ),
            ),
          ],
          title: Row(
            children: [
              Image.asset(
                "assets/image/applogo.png",
                height: Get.width/13,
              ),
              Text(
                " CRICSTRIKE",
              ),
            ],
          ),
          leading: Padding(
            padding: EdgeInsets.only(left:Get.width/40,top: Get.width/50,bottom: Get.width/50),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://w7.pngwing.com/pngs/420/567/png-transparent-avatar-male-man-portrait-avatars-xmas-giveaway-icon.png",
              ),
            ),
          ),
          backgroundColor: Color(0xff021852),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: Get.width/20),
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
          child: Obx(() => navigatorController.Screens[navigatorController.NavigatIndex.value]),
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
                  activeIcon:
                      Image.asset("assets/image/activecricket.png", height: 25),
                  icon: Image.asset("assets/image/cricket.png", height: 25),
                  label: ""),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xff021852),
                  activeIcon:
                      Image.asset("assets/image/activecard.png", height: 25),
                  icon: Image.asset("assets/image/card.png", height: 25),
                  label: ""),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xff021852),
                  activeIcon:
                      Image.asset("assets/image/activewallet.png", height: 25),
                  icon: Image.asset("assets/image/wallet.png", height: 25),
                  label: ""),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xff021852),
                  activeIcon:
                      Image.asset("assets/image/activegames.png", height: 25),
                  icon: Image.asset("assets/image/game.png", height: 25),
                  label: ""),
            ],
          ),
        ),
      ),
    );
  }
}
