import 'dart:math';

import 'package:cricstreak/Screens/CreateTeam/controller/CreateTeamController.dart';
import 'package:cricstreak/Screens/CreateTeam/model/PlayerDetailModel.dart';
import 'package:cricstreak/Screens/CreateTeam/model/TeamModel.dart';
import 'package:cricstreak/Utils/Shape.dart';
import 'package:edge_alerts/edge_alerts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateTeamPage extends StatefulWidget {
  const CreateTeamPage({Key? key}) : super(key: key);

  @override
  State<CreateTeamPage> createState() => _CreateTeamPageState();
}

class _CreateTeamPageState extends State<CreateTeamPage> {
  CreateTeamController createTeamController = Get.put(CreateTeamController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: const Color(0xFF021852),
            elevation: 0,
            title: Padding(
              padding: EdgeInsets.only(
                  left: Get.width / 25, right: Get.width / 25, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Players",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Obx(
                        () => Text.rich(TextSpan(children: [
                          TextSpan(
                              text: "${createTeamController.PlayerCount.value}",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          const TextSpan(
                              text: "/11",
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14))
                        ])),
                      ),
                    ],
                  ),
                  Transform.rotate(
                    angle: pi / 2,
                    child: const Text(
                      "-------",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        "RCB",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Obx(
                        () => Text("${createTeamController.RCBPCount.value}",
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        "CSK",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Obx(
                        () => Text("${createTeamController.CSKPCount.value}",
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ),
                    ],
                  ),
                  Transform.rotate(
                    angle: pi / 2,
                    child: const Text(
                      "-------",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        "Credit Left",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Obx(() {
                        if (createTeamController.CreditLeftCount.value < 0) {
                          edgeAlert(context, title: 'Credit left');
                        }
                        return Text(
                            "${(createTeamController.CreditLeftCount.value % 2 == 0 || createTeamController.CreditLeftCount.value % 2 == 1) ? createTeamController.CreditLeftCount.value.round() : createTeamController.CreditLeftCount.value.toStringAsFixed(1)}",
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18));
                      }),
                    ],
                  ),
                ],
              ),
            ),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(120),
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, bottom: 6),
                        child: Obx(
                          () => Row(
                            children: [
                              Shape.shape.KajuKatriShape(
                                  selected:
                                      createTeamController.PlayerCount.value >=
                                              1
                                          ? true
                                          : false,
                                  text: 1,
                                  show:
                                      createTeamController.PlayerCount.value ==
                                              1
                                          ? true
                                          : false),
                              Shape.shape.KajuKatriShape(
                                  selected:
                                      createTeamController.PlayerCount.value >=
                                              2
                                          ? true
                                          : false,
                                  text: 2,
                                  show:
                                      createTeamController.PlayerCount.value ==
                                              2
                                          ? true
                                          : false),
                              Shape.shape.KajuKatriShape(
                                  selected:
                                      createTeamController.PlayerCount.value >=
                                              3
                                          ? true
                                          : false,
                                  text: 3,
                                  show:
                                      createTeamController.PlayerCount.value ==
                                              3
                                          ? true
                                          : false),
                              Shape.shape.KajuKatriShape(
                                  selected:
                                      createTeamController.PlayerCount.value >=
                                              4
                                          ? true
                                          : false,
                                  text: 4,
                                  show:
                                      createTeamController.PlayerCount.value ==
                                              4
                                          ? true
                                          : false),
                              Shape.shape.KajuKatriShape(
                                  selected:
                                      createTeamController.PlayerCount.value >=
                                              5
                                          ? true
                                          : false,
                                  text: 5,
                                  show:
                                      createTeamController.PlayerCount.value ==
                                              5
                                          ? true
                                          : false),
                              Shape.shape.KajuKatriShape(
                                  selected:
                                      createTeamController.PlayerCount.value >=
                                              6
                                          ? true
                                          : false,
                                  text: 6,
                                  show:
                                      createTeamController.PlayerCount.value ==
                                              6
                                          ? true
                                          : false),
                              Shape.shape.KajuKatriShape(
                                  selected:
                                      createTeamController.PlayerCount.value >=
                                              7
                                          ? true
                                          : false,
                                  text: 7,
                                  show:
                                      createTeamController.PlayerCount.value ==
                                              7
                                          ? true
                                          : false),
                              Shape.shape.KajuKatriShape(
                                  selected:
                                      createTeamController.PlayerCount.value >=
                                              8
                                          ? true
                                          : false,
                                  text: 8,
                                  show:
                                      createTeamController.PlayerCount.value ==
                                              8
                                          ? true
                                          : false),
                              Shape.shape.KajuKatriShape(
                                  selected:
                                      createTeamController.PlayerCount.value >=
                                              9
                                          ? true
                                          : false,
                                  text: 9,
                                  show:
                                      createTeamController.PlayerCount.value ==
                                              9
                                          ? true
                                          : false),
                              Shape.shape.KajuKatriShape(
                                  selected:
                                      createTeamController.PlayerCount.value >=
                                              10
                                          ? true
                                          : false,
                                  text: 10,
                                  show:
                                      createTeamController.PlayerCount.value ==
                                              10
                                          ? true
                                          : false),
                              Shape.shape.KajuKatriShape(
                                  selected:
                                      createTeamController.PlayerCount.value ==
                                              11
                                          ? true
                                          : false,
                                  text: 11,
                                  show:
                                      createTeamController.PlayerCount.value ==
                                              11
                                          ? true
                                          : false),
                            ],
                          ),
                        )),
                    TabBar(
                      isScrollable: true,
                      indicatorWeight: 5,
                      indicatorColor: const Color(0xFFFFD809),
                      labelStyle: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      unselectedLabelStyle:
                          const TextStyle(fontWeight: FontWeight.w500),
                      tabs: [
                        Tab(
                          height: 90,
                          text: 'WK (1-4)',
                          icon: SizedBox(
                            height: 53,
                            width: 53,
                            // color: Colors.yellow,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      'assets/image/keeper_icon.png',
                                      height: 25,
                                      width: 25,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    height: 18,
                                    width: 18,
                                    margin: const EdgeInsets.only(
                                      top: 5,
                                    ),
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFFFD809),
                                        shape: BoxShape.circle),
                                    alignment: Alignment.center,
                                    child: Obx(
                                      () => Text(
                                        "${createTeamController.WKPCount.value}",
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Tab(
                          height: 90,
                          text: 'BAT (1-4)',
                          icon: SizedBox(
                            height: 53,
                            width: 53,
                            // color: Colors.yellow,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      'assets/image/bat_icon.png',
                                      height: 25,
                                      width: 25,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    height: 18,
                                    width: 18,
                                    margin: const EdgeInsets.only(
                                      top: 5,
                                    ),
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFFFD809),
                                        shape: BoxShape.circle),
                                    alignment: Alignment.center,
                                    child: Obx(
                                      () => Text(
                                        "${createTeamController.BATPCount.value}",
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Tab(
                          height: 90,
                          text: 'AR (1-4)',
                          icon: SizedBox(
                            height: 53,
                            width: 53,
                            // color: Colors.yellow,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      'assets/image/ar_icon.png',
                                      height: 25,
                                      width: 25,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    height: 18,
                                    width: 18,
                                    margin: const EdgeInsets.only(
                                      top: 5,
                                    ),
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFFFD809),
                                        shape: BoxShape.circle),
                                    alignment: Alignment.center,
                                    child: Obx(
                                      () => Text(
                                        "${createTeamController.ARPCount.value}",
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Tab(
                          height: 90,
                          text: 'BOWL (1-4)',
                          icon: SizedBox(
                            height: 53,
                            width: 53,
                            // color: Colors.yellow,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      'assets/image/ball_icon.png',
                                      height: 25,
                                      width: 25,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    height: 18,
                                    width: 18,
                                    margin: const EdgeInsets.only(
                                      top: 5,
                                    ),
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFFFD809),
                                        shape: BoxShape.circle),
                                    alignment: Alignment.center,
                                    child: Obx(
                                      () => Text(
                                        "${createTeamController.BOWLPCount.value}",
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
          body: TabBarView(
              physics: const BouncingScrollPhysics(),
              children: createTeamController.Screens),
          bottomNavigationBar: Container(
            height: 70,
            color: Colors.white,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      createTeamController.FinalTeam.value = TeamModel(AR: [],Bat: [],Bowl: [],WK: []);
                        for (PlayerDetailModel player in createTeamController.wkList) {
                          if (player.selected!) {
                            createTeamController.FinalTeam.value.WK!.add(player);
                          }
                        }
                        for (PlayerDetailModel player in createTeamController.batList) {
                          if (player.selected!) {
                            createTeamController.FinalTeam.value.Bat!.add(player);
                          }
                        }
                        for (PlayerDetailModel player in createTeamController.arList) {
                          if (player.selected!) {
                            createTeamController.FinalTeam.value.AR!.add(player);
                          }
                        }
                        for (PlayerDetailModel player in createTeamController.bowlList) {
                          if (player.selected!) {
                            createTeamController.FinalTeam.value.Bowl!.add(player);
                          }
                        }
                      Get.toNamed('team_Preview');
                    },
                    child: Card(
                      color: Colors.green,
                      elevation: 3,
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.green, width: 1.5),
                            borderRadius: BorderRadius.circular(5)),
                        alignment: Alignment.center,
                        child: const Text(
                          "PREVIEW TEAM",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width / 30,
                ),
                Expanded(
                  child: Obx(
                    () => InkWell(
                      onTap: () {
                        if (createTeamController.PlayerCount.value == 11) {
                          createTeamController.FinalTeam.value = TeamModel(AR: [],Bat: [],Bowl: [],WK: []);
                          for (PlayerDetailModel player in createTeamController.wkList) {
                            if (player.selected!) {
                              createTeamController.FinalTeam.value.WK!.add(player);
                            }
                          }
                          for (PlayerDetailModel player in createTeamController.batList) {
                            if (player.selected!) {
                              createTeamController.FinalTeam.value.Bat!.add(player);
                            }
                          }
                          for (PlayerDetailModel player in createTeamController.arList) {
                            if (player.selected!) {
                              createTeamController.FinalTeam.value.AR!.add(player);
                            }
                          }
                          for (PlayerDetailModel player in createTeamController.bowlList) {
                            if (player.selected!) {
                              createTeamController.FinalTeam.value.Bowl!.add(player);
                            }
                          }
                          Get.toNamed('linup');
                        }
                      },
                      child: Card(
                        color: createTeamController.PlayerCount.value == 11
                            ? Colors.green
                            : Colors.grey.shade300,
                        elevation: 3,
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                            color: createTeamController.PlayerCount.value == 11
                                ? Colors.green
                                : Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "CONTINUE",
                            style: TextStyle(
                                color:
                                    createTeamController.PlayerCount.value == 11
                                        ? Colors.white
                                        : Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
