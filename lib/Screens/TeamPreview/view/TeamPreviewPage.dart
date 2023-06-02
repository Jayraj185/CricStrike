import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utils/firehelper.dart';
import '../../CreateTeam/controller/CreateTeamController.dart';
import '../../prediction/controller/predictionController.dart';

class TeamPreviewPage extends StatefulWidget {
  const TeamPreviewPage({Key? key}) : super(key: key);

  @override
  State<TeamPreviewPage> createState() => _TeamPreviewPageState();
}

class _TeamPreviewPageState extends State<TeamPreviewPage> {
  CreateTeamController createTeamController = Get.put(CreateTeamController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff021852),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.close,
              color: Colors.white,
            ),
          ),
          title: const Text(
            "CRICSTRIKE XII",
            style: TextStyle(color: Colors.white),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(66),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(
                    thickness: 1.2,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Players",
                            style:
                            TextStyle(color: Colors.white70, fontSize: 12),
                          ),
                          Text.rich(TextSpan(children: [
                            TextSpan(
                              text: "11",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            TextSpan(
                              text: " /11",
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 12),
                            ),
                          ])),
                        ],
                      ),
                      // Container(
                      //   height: 21,
                      //   margin: const EdgeInsets.only(left: 30),
                      //   decoration: BoxDecoration(
                      //       color: const Color(0xFF021852),
                      //       borderRadius: BorderRadius.circular(3)),
                      //   alignment: Alignment.center,
                      //   padding: const EdgeInsets.symmetric(horizontal: 8),
                      //   child: Text(
                      //     "${predictionController.dataList[0]['cricteam']['team1']}",
                      //     style: const TextStyle(
                      //         color: Colors.white,
                      //         fontSize: 12,
                      //         fontWeight: FontWeight.bold),
                      //   ),
                      // ),
                      // Text(
                      //   "${predictionController.dataList[0]['cricteam']['team1_player']}",
                      //   style: const TextStyle(
                      //       color: Colors.white,
                      //       fontWeight: FontWeight.bold,
                      //       fontSize: 18),
                      // ),
                      // const Text(
                      //   ":",
                      //   style: TextStyle(
                      //       color: Colors.white,
                      //       fontWeight: FontWeight.bold,
                      //       fontSize: 18),
                      // ),
                      // Text(
                      //   "${predictionController.dataList[0]['cricteam']['team2_player']}",
                      //   style: const TextStyle(
                      //       color: Colors.white,
                      //       fontWeight: FontWeight.bold,
                      //       fontSize: 18),
                      // ),
                      // Container(
                      //   height: 21,
                      //   margin: const EdgeInsets.only(right: 30),
                      //   decoration: BoxDecoration(
                      //       color: Colors.white,
                      //       borderRadius: BorderRadius.circular(3)),
                      //   alignment: Alignment.center,
                      //   padding: const EdgeInsets.symmetric(horizontal: 8),
                      //   child: Text(
                      //     "${predictionController.dataList[0]['cricteam']['team2']}",
                      //     style: const TextStyle(
                      //         color: Color(0xFF021852),
                      //         fontSize: 12,
                      //         fontWeight: FontWeight.bold),
                      //   ),
                      // ),
                      Container(
                        alignment: Alignment.centerRight,
                        width: 40,
                        child: const Icon(
                          Icons.info_outline,
                          color: Colors.white,
                        ),
                      ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.end,
                      //   children: [
                      //     // Text(
                      //     //   "Credit Left",
                      //     //   style:
                      //     //       TextStyle(color: Colors.white70, fontSize: 14),
                      //     // ),
                      //     // Text(
                      //     //   "0",
                      //     //   style: TextStyle(
                      //     //       color: Colors.white,
                      //     //       fontWeight: FontWeight.bold,
                      //     //       fontSize: 15),
                      //     // ),
                      //   ],
                      // ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  )
                ],
              ),
            ),
          ),
        ),
        backgroundColor: const Color(0xff07853D),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF007432),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF0B8640),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF007432),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF0B8640),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF007432),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF0B8640),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF007432),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1000),
                  border: Border.all(color: Colors.white, width: 0.5)),
            ),
            Container(
              width: 100,
              height: 280,
              color: const Color(0xFF4FA042),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      "KEEPER",textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: Get.height/8,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: Get.width /
                                createTeamController.finalTeam['WK']!.length /
                                (createTeamController.finalTeam['WK']!.length == 2
                                    ? 4
                                    : createTeamController.finalTeam['WK']!.length == 3
                                    ? 6
                                    : createTeamController.finalTeam['WK']!.length == 4
                                    ? 12
                                    : createTeamController.finalTeam['WK']!.length == 5
                                    ? 50
                                    : 4)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: Get.height/12,
                              // color: Colors.red,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: CachedNetworkImage(
                                      fadeInDuration:
                                      const Duration(seconds: 0),
                                      fit: BoxFit.fill,
                                      imageUrl:
                                      "${createTeamController.finalTeam['WK']![index].imageUrl}",
                                      progressIndicatorBuilder: (context,
                                          url, downloadProgress) =>
                                          Container(),
                                      errorWidget:
                                          (context, url, error) => Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: const [
                                          Icon(Icons.error),
                                          Text(" Image Not available")
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      height: 23,
                                      decoration: BoxDecoration(
                                          color: createTeamController.finalTeam['WK']![index].name!=
                                              "CSK"
                                              ? const Color(0xffffffff)
                                              : const Color(0xff021852),
                                          borderRadius:
                                          BorderRadius.circular(4)),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "${createTeamController.finalTeam['WK']![index].name}",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: createTeamController.finalTeam['WK']![index].name!=
                                                "RCB"
                                                ? const Color(0xffffffff)
                                                : const Color(0xff021852),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                "${createTeamController.finalTeam['WK']![index].credit}",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      shrinkWrap: true,
                      itemCount: createTeamController.finalTeam['WK']!.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  const Text(
                    "BATTER",textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: Get.height/8,

                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: Get.width /
                                createTeamController.finalTeam['BAT']!.length /
                                (createTeamController.finalTeam['BAT']!.length == 2
                                    ? 4
                                    : createTeamController.finalTeam['BAT']!.length == 3
                                    ? 6
                                    : createTeamController.finalTeam['BAT']!.length == 4
                                    ? 12
                                    : createTeamController.finalTeam['BAT']!.length == 5
                                    ? 50
                                    : 4)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: Get.height/12,

                              // color: Colors.red,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: CachedNetworkImage(
                                      fadeInDuration:
                                      const Duration(seconds: 0),
                                      fit: BoxFit.fill,
                                      imageUrl:
                                      "${createTeamController.finalTeam['BAT']![index]!.imageUrl}",
                                      progressIndicatorBuilder: (context,
                                          url, downloadProgress) =>
                                          Container(),
                                      errorWidget:
                                          (context, url, error) => Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: const [
                                          Icon(Icons.error),
                                          Text(" Image Not available")
                                        ],
                                      ),
                                    ),),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      height: 23,
                                      decoration: BoxDecoration(
                                          color: createTeamController.finalTeam['WK']![index].name!=
                                              "CSK"
                                              ? const Color(0xffffffff)
                                              : const Color(0xff021852),
                                          borderRadius:
                                          BorderRadius.circular(4)),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "${createTeamController.finalTeam['BAT']![index]!.name}",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: createTeamController.finalTeam['WK']![index].name!=
                                                "RCB"
                                                ? const Color(0xffffffff)
                                                : const Color(0xff021852),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                "${createTeamController.finalTeam['BAT']![index]!.credit}",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      shrinkWrap: true,
                      itemCount: createTeamController.finalTeam['BAT']!.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  const Text(
                    "ALL ROUNDERS",textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: Get.height/8,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: Get.width /
                                createTeamController.finalTeam['AR']!.length /
                                (createTeamController.finalTeam['AR']!.length == 2
                                    ? 4
                                    : createTeamController.finalTeam['AR']!.length == 3
                                    ? 6
                                    : createTeamController.finalTeam['AR']!.length == 4
                                    ? 12
                                    : createTeamController.finalTeam['AR']!.length== 5
                                    ? 50
                                    : 4)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: Get.height/12,

                              // color: Colors.red,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: CachedNetworkImage(
                                      fadeInDuration:
                                      const Duration(seconds: 0),
                                      fit: BoxFit.fill,
                                      imageUrl:
                                      "${createTeamController.finalTeam['AR']![index].imageUrl}",
                                      progressIndicatorBuilder: (context,
                                          url, downloadProgress) =>
                                          Container(),
                                      errorWidget:
                                          (context, url, error) => Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: const [
                                          Icon(Icons.error),
                                          Text(" Image Not available")
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      height: 23,
                                      decoration: BoxDecoration(
                                          color:createTeamController.finalTeam['WK']![index].name!=
                                              "CSK"
                                              ? const Color(0xffffffff)
                                              : const Color(0xff021852),
                                          borderRadius:
                                          BorderRadius.circular(4)),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "${createTeamController.finalTeam['AR']![index].name}",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: createTeamController.finalTeam['WK']![index].name!=
                                                "RCB"
                                                ? const Color(0xffffffff)
                                                : const Color(0xff021852),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                "${createTeamController.finalTeam['AR']![index].credit}",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      shrinkWrap: true,
                      itemCount: createTeamController.finalTeam['AR']!.length??0,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "BOWLERS",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: Get.height/8,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: Get.width /
    createTeamController.finalTeam['BOWL']!.length/
                                ( createTeamController.finalTeam['AR']!.length == 2
                                    ? 4
                                    :   createTeamController.finalTeam['BOWL']!.length == 3
                                    ? 6
                                    :   createTeamController.finalTeam['BOWL']!.length == 4
                                    ? 12
                                    :   createTeamController.finalTeam['BOWL']!.length == 5
                                    ? 50
                                    : 4)),
                        child: Column(
                          children: [
                            Container(
                              height: Get.height/12,
                              alignment: Alignment.center,
                              // color: Colors.red,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: CachedNetworkImage(
                                      fadeInDuration:
                                      const Duration(seconds: 0),
                                      fit: BoxFit.fill,
                                      imageUrl:
                                      "${createTeamController.finalTeam['BOWL']![index].imageUrl}",
                                      progressIndicatorBuilder: (context,
                                          url, downloadProgress) =>
                                          Container(),
                                      errorWidget:
                                          (context, url, error) => Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: const [
                                          Icon(Icons.error),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      height: 23,
                                      decoration: BoxDecoration(
                                          color: createTeamController.finalTeam['WK']![index].name!=
                                              "CSK"
                                              ? const Color(0xffffffff)
                                              : const Color(0xff021852),
                                          borderRadius:
                                          BorderRadius.circular(4)),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "${createTeamController.finalTeam['BOWL']![index].name}",
                                        style: TextStyle(
                                            color:createTeamController.finalTeam['WK']![index].name!=
                                                "RCB"
                                                ? const Color(0xffffffff)
                                                : const Color(0xff021852),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                "${createTeamController.finalTeam['BOWL']![index].credit}",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      shrinkWrap: true,
                      itemCount: createTeamController.finalTeam['BOWL']!.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
