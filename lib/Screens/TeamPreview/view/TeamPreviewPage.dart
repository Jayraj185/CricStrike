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
            "LIGER XI",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.edit,color: Colors.white,),)
          ],
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
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Players",
                              style:
                              TextStyle(color: Colors.white70, fontSize: 12),
                            ),
                            Text.rich(TextSpan(children: [
                              TextSpan(
                                text: "${createTeamController.PlayerCount.value}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              const TextSpan(
                                text: " /11",
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 12),
                              ),
                            ])),
                          ],
                        ),
                        Container(
                          height: 21,
                          margin: const EdgeInsets.only(left: 30),
                          decoration: BoxDecoration(
                              color: const Color(0xFF021882),
                              borderRadius: BorderRadius.circular(3)),
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: const Text(
                            "RCB",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          "${createTeamController.RCBPCount.value}",
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        const Text(
                          ":",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          "${createTeamController.CSKPCount.value}",
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Container(
                          height: 21,
                          margin: const EdgeInsets.only(right: 30),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(3)),
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: const Text(
                            "CSK",
                            style: TextStyle(
                                color: Color(0xFF021852),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        // Container(
                        //   alignment: Alignment.centerRight,
                        //   width: 40,
                        //   child: const Icon(
                        //     Icons.info_outline,
                        //     color: Colors.white,
                        //   ),
                        // ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "Credit Left",
                              style:
                                  TextStyle(color: Colors.white70, fontSize: 14),
                            ),
                            Text(
                              "${createTeamController.CreditLeftCount.value}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
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
        body: createTeamController.FinalTeam.value.WK!.isNotEmpty ||  createTeamController.FinalTeam.value.Bat!.isNotEmpty || createTeamController.FinalTeam.value.AR!.isNotEmpty || createTeamController.FinalTeam.value.Bowl!.isNotEmpty
            ? Stack(
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
                                createTeamController.FinalTeam.value.WK!.length /
                                (createTeamController.FinalTeam.value.WK!.length == 2
                                    ? 4
                                    : createTeamController.FinalTeam.value.WK!.length == 3
                                    ? 6
                                    : createTeamController.FinalTeam.value.WK!.length == 4
                                    ? 12
                                    : createTeamController.FinalTeam.value.WK!.length == 5
                                    ? 50
                                    : 4)),
                        child: Column(
                          children: [
                            Stack(
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
                                            "${createTeamController.FinalTeam.value.WK![index].imageUrl}",
                                            progressIndicatorBuilder: (context,
                                                url, downloadProgress) =>
                                                Container(),
                                            errorWidget:
                                                (context, url, error) => Padding(padding: EdgeInsets.only(bottom: Get.width/18),child: Image.asset("assets/image/person.png"),)
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: 23,
                                          decoration: BoxDecoration(
                                              color: createTeamController.FinalTeam.value.WK![index].color!.toLowerCase() !=
                                                  "0xffffffff".toLowerCase()
                                                  ? const Color(0xffffffff)
                                                  : const Color(0xff021852),
                                              borderRadius:
                                              BorderRadius.circular(4)),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${createTeamController.FinalTeam.value.WK![index].firstName![0].toUpperCase()}. ${createTeamController.FinalTeam.value.WK![index].lastName}",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: createTeamController.FinalTeam.value.WK![index].color!.toLowerCase() !=
                                                    "0xffffffff".toLowerCase()
                                                    ? const Color(0xff021852)
                                                    : const Color(0xffffffff),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                createTeamController.FinalTeam.value.WK![index].captain! || createTeamController.FinalTeam.value.WK![index].vicecaptain! ? Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: Get.width/25,
                                    width: Get.width/25,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: createTeamController.FinalTeam.value.WK![index].captain! ? const  Color(0xff021852) : Colors.white,
                                        border: Border.all(color: createTeamController.FinalTeam.value.WK![index].captain! ? Colors.white : const  Color(0xff021852))
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${createTeamController.FinalTeam.value.WK![index].captain! ? "C" : "VC"}".toUpperCase(),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: createTeamController.FinalTeam.value.WK![index].captain! ? Colors.white : const  Color(0xff021852),
                                        fontSize: 8,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ) : const SizedBox(height: 0,width: 0,)
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                "${createTeamController.FinalTeam.value.WK![index].credit}${createTeamController.FinalTeam.value.WK![index].point == 0 ? " Cr" : ""}",
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
                      itemCount: createTeamController.FinalTeam.value.WK!.length,
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
                                createTeamController.FinalTeam.value.Bat!.length /
                                (createTeamController.FinalTeam.value.Bat!.length == 2
                                    ? 4
                                    : createTeamController.FinalTeam.value.Bat!.length == 3
                                    ? 6
                                    : createTeamController.FinalTeam.value.Bat!.length == 4
                                    ? 12
                                    : createTeamController.FinalTeam.value.Bat!.length == 5
                                    ? 50
                                    : 4)),
                        child: Column(
                          children: [
                            Stack(
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
                                            "${createTeamController.FinalTeam.value.Bat![index].imageUrl}",
                                            progressIndicatorBuilder: (context,
                                                url, downloadProgress) =>
                                                Container(),
                                            errorWidget:
                                                (context, url, error) => Padding(padding: EdgeInsets.only(bottom: Get.width/18),child: Image.asset("assets/image/person.png"),)
                                        ),),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: 23,
                                          decoration: BoxDecoration(
                                              color: createTeamController.FinalTeam.value.Bat![index].color!.toLowerCase() !=
                                                  "0xffffffff".toLowerCase()
                                                  ? const Color(0xffffffff)
                                                  : const Color(0xff021852),
                                              borderRadius:
                                              BorderRadius.circular(4)),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${createTeamController.FinalTeam.value.Bat![index].firstName![0].toUpperCase()}. ${createTeamController.FinalTeam.value.Bat![index].lastName}",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: createTeamController.FinalTeam.value.Bat![index].color!.toLowerCase() !=
                                                    "0xffffffff".toLowerCase()
                                                    ? const Color(0xff021852)
                                                    : const Color(0xffffffff),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                createTeamController.FinalTeam.value.Bat![index].captain! || createTeamController.FinalTeam.value.Bat![index].vicecaptain! ? Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: Get.width/25,
                                    width: Get.width/25,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: createTeamController.FinalTeam.value.Bat![index].captain! ? const  Color(0xff021852) : Colors.white,
                                        border: Border.all(color: createTeamController.FinalTeam.value.Bat![index].captain! ? Colors.white : const  Color(0xff021852))
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${createTeamController.FinalTeam.value.Bat![index].captain! ? "C" : "VC"}".toUpperCase(),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: createTeamController.FinalTeam.value.Bat![index].captain! ? Colors.white : const  Color(0xff021852),
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ) : const SizedBox(height: 0,width: 0,)
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                "${createTeamController.FinalTeam.value.Bat![index].credit}${createTeamController.FinalTeam.value.Bat![index].point == 0 ? " Cr" : ""}",
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
                      itemCount: createTeamController.FinalTeam.value.Bat!.length,
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
                                createTeamController.FinalTeam.value.AR!.length /
                                (createTeamController.FinalTeam.value.AR!.length == 2
                                    ? 4
                                    : createTeamController.FinalTeam.value.AR!.length == 3
                                    ? 6
                                    : createTeamController.FinalTeam.value.AR!.length == 4
                                    ? 12
                                    : createTeamController.FinalTeam.value.AR!.length== 5
                                    ? 50
                                    : 4)),
                        child: Column(
                          children: [
                            Stack(
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
                                            "${createTeamController.FinalTeam.value.AR![index].imageUrl}",
                                            progressIndicatorBuilder: (context,
                                                url, downloadProgress) =>
                                                Container(),
                                            errorWidget:
                                                (context, url, error) => Padding(padding: EdgeInsets.only(bottom: Get.width/18),child: Image.asset("assets/image/person.png"),)
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: 23,
                                          decoration: BoxDecoration(
                                              color:createTeamController.FinalTeam.value.AR![index].color!.toLowerCase() !=
                                                  "0xffffffff".toLowerCase()
                                                  ? const Color(0xffffffff)
                                                  : const Color(0xff021852),
                                              borderRadius:
                                              BorderRadius.circular(4)),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${createTeamController.FinalTeam.value.AR![index].firstName![0].toUpperCase()}. ${createTeamController.FinalTeam.value.AR![index].lastName}",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: createTeamController.FinalTeam.value.AR![index].color!.toLowerCase() !=
                                                    "0xffffffff".toLowerCase()
                                                    ? const Color(0xff021852)
                                                    : const Color(0xffffffff),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                createTeamController.FinalTeam.value.AR![index].captain! || createTeamController.FinalTeam.value.AR![index].vicecaptain! ? Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: Get.width/25,
                                    width: Get.width/25,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: createTeamController.FinalTeam.value.AR![index].captain! ? const  Color(0xff021852) : Colors.white,
                                        border: Border.all(color: createTeamController.FinalTeam.value.AR![index].captain! ? Colors.white : const  Color(0xff021852))
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${createTeamController.FinalTeam.value.AR![index].captain! ? "C" : "VC"}".toUpperCase(),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: createTeamController.FinalTeam.value.AR![index].captain! ? Colors.white : const  Color(0xff021852),
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ) : const SizedBox(height: 0,width: 0,)
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                "${createTeamController.FinalTeam.value.AR![index].credit}${createTeamController.FinalTeam.value.AR![index].point == 0 ? " Cr" : ""}",
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
                      itemCount: createTeamController.FinalTeam.value.AR!.length,
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
                            horizontal: Get.width / createTeamController.FinalTeam.value.Bowl!.length/
                                ( createTeamController.FinalTeam.value.Bowl!.length == 2
                                    ? 4
                                    :   createTeamController.FinalTeam.value.Bowl!.length == 3
                                    ? 6
                                    :   createTeamController.FinalTeam.value.Bowl!.length == 4
                                    ? 12
                                    :   createTeamController.FinalTeam.value.Bowl!.length == 5
                                    ? 50
                                    : 4)),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                SizedBox(
                                  height: Get.height/12,
                                  // alignment: Alignment.center,
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
                                            "${createTeamController.FinalTeam.value.Bowl![index].imageUrl}",
                                            progressIndicatorBuilder: (context,
                                                url, downloadProgress) =>
                                                Container(),
                                            errorWidget:
                                                (context, url, error) => Padding(padding: EdgeInsets.only(bottom: Get.width/18),child: Image.asset("assets/image/person.png"),)
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: 23,
                                          decoration: BoxDecoration(
                                              color: createTeamController.FinalTeam.value.Bowl![index].color!.toLowerCase() !=
                                                  "0xffffffff".toLowerCase()
                                                  ? const Color(0xffffffff)
                                                  : const Color(0xff021852),
                                              borderRadius:
                                              BorderRadius.circular(4)),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${createTeamController.FinalTeam.value.Bowl![index].firstName![0].toUpperCase()}. ${createTeamController.FinalTeam.value.Bowl![index].lastName}",
                                            style: TextStyle(
                                                color:createTeamController.FinalTeam.value.Bowl![index].color!.toLowerCase() !=
                                                    "0xffffffff".toLowerCase()
                                                    ? const Color(0xff021852)
                                                    : const Color(0xffffffff),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                createTeamController.FinalTeam.value.Bowl![index].captain! || createTeamController.FinalTeam.value.Bowl![index].vicecaptain! ? Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: Get.width/25,
                                    width: Get.width/25,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: createTeamController.FinalTeam.value.Bowl![index].captain! ? const  Color(0xff021852) : Colors.white,
                                        border: Border.all(color: createTeamController.FinalTeam.value.Bowl![index].captain! ? Colors.white : const  Color(0xff021852))
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${createTeamController.FinalTeam.value.Bowl![index].captain! ? "C" : "VC"}".toUpperCase(),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: createTeamController.FinalTeam.value.Bowl![index].captain! ? Colors.white : const  Color(0xff021852),
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ) : const SizedBox(height: 0,width: 0,)
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                "${createTeamController.FinalTeam.value.Bowl![index].credit}${createTeamController.FinalTeam.value.Bowl![index].point == 0 ? " Cr" : ""}",
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
                      itemCount: createTeamController.FinalTeam.value.Bowl!.length,
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
        )
            : Center(child: Image.asset("assets/image/team_preview.png"),),
      ),
    );
  }
}
