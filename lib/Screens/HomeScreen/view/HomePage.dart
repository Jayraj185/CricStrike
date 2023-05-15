import 'package:cached_network_image/cached_network_image.dart';
import 'package:cricstreak/Screens/navigator/controller/navigatorController.dart';
import 'package:cricstreak/Utils/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../Utils/firehelper.dart';
import '../../game/model/GameModel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NavigatorController navigatorController = Get.put(NavigatorController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
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
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    height: 95,
                    width: 300,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFF8E58EF),
                              Color(0xFF537AF3),
                            ]),
                        borderRadius: BorderRadius.circular(15)),
                    padding: const EdgeInsets.only(left: 12, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "100% BONUS AND IC ON CASH",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: Get.width / 60),
                                child: const Text(
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
                                    color: const Color(0xFFFFE400),
                                    borderRadius: BorderRadius.circular(6)),
                                alignment: Alignment.center,
                                child: const Text(
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
                          margin: const EdgeInsets.only(left: 15, bottom: 15),
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
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    height: 95,
                    width: 300,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFF8E58EF),
                              Color(0xFF537AF3),
                            ]),
                        borderRadius: BorderRadius.circular(15)),
                    padding: const EdgeInsets.only(left: 12, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "100% BONUS AND IC ON CASH",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: Get.width / 60),
                                child: const Text(
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
                                    color: const Color(0xFFFFE400),
                                    borderRadius: BorderRadius.circular(6)),
                                alignment: Alignment.center,
                                child: const Text(
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
                          margin: const EdgeInsets.only(left: 15, bottom: 15),
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
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 330,
                    decoration: BoxDecoration(
                      color: const Color(0xff021852),
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
                          child: InkWell(
                            onTap: () {
                              navigatorController.NavigatIndex.value = 1;
                            },
                            child: Widgets.widgets.MyPlayButton(
                                title: "Fantacy", player: "1.2 cr"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 13,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                            color: const Color(0xff021852),
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
                              child: InkWell(
                                onTap: () {
                                  launchUrl(
                                      Uri.parse("https://poki.com/en/g/rummy"));
                                },
                                child: Widgets.widgets
                                    .MyPlayButton(title: "Rummy", player: "4k"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 160,
                        width: 170,
                        decoration: BoxDecoration(
                          color: const Color(0xff021852),
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
                                  launchUrl(Uri.parse(
                                      "https://poki.com/en/g/football-masters"));
                                },
                                child: Widgets.widgets.MyPlayButton(
                                    title: "Football", player: "10k"),
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
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                const Text(
                  "Games",
                  style: TextStyle(
                      color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
                ),const Spacer(),
                InkWell(
                  onTap: () {
                    navigatorController.NavigatIndex.value=4;
                  },
                  child: const Text(
                    "More",
                    style: TextStyle(
                        color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          StreamBuilder(
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<GameModel> l1 = [];
                dynamic docs = snapshot.data!.docs;
                print("=====================DATTTTT ${docs[0]['games']}");
                for (var doc in docs[0]['games']) {
                  l1.add(GameModel().fromJson(doc));
                }
                return Container(
                  height: 130,
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(right: 16),
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: l1.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () async {
                          await launchUrl(Uri.parse("${l1[index].link}"));
                        },
                        child: Container(
                          margin: index == 0
                              ? const EdgeInsets.only(left: 16)
                              : const EdgeInsets.only(left: 10),
                          width: 100,

                          height: 130,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(color: const Color(0xff021852),
                                    borderRadius: BorderRadius.circular(15)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: CachedNetworkImage(fadeInDuration: const Duration(seconds: 00),filterQuality: FilterQuality.high,
                                    fit: BoxFit.fill,
                                    imageUrl:
                                    "${l1[index].image}",
                                    progressIndicatorBuilder:
                                        (context, url, downloadProgress) =>
                                        Container(

                                        ),
                                    errorWidget: (context, url, error) => Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.error),
                                        const Text(" Image Not available")
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "${l1[index].name}",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("${snapshot.error}"),
                );
              }
              return Container(
                height: 130,
              );
            },
            stream: FireHelper.fireHelper.GetData(),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    height: 95,
                    width: 300,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFF8E58EF),
                              Color(0xFF537AF3),
                            ]),
                        borderRadius: BorderRadius.circular(15)),
                    padding: const EdgeInsets.only(left: 12, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "100% BONUS AND IC ON CASH",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: Get.width / 60),
                                child: const Text(
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
                                    color: const Color(0xFFFFE400),
                                    borderRadius: BorderRadius.circular(6)),
                                alignment: Alignment.center,
                                child: const Text(
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
                          margin: const EdgeInsets.only(left: 15, bottom: 15),
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
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    height: 95,
                    width: 300,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFF8E58EF),
                              Color(0xFF537AF3),
                            ]),
                        borderRadius: BorderRadius.circular(15)),
                    padding: const EdgeInsets.only(left: 12, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "100% BONUS AND IC ON CASH",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: Get.width / 60),
                                child: const Text(
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
                                    color: const Color(0xFFFFE400),
                                    borderRadius: BorderRadius.circular(6)),
                                alignment: Alignment.center,
                                child: const Text(
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
                          margin: const EdgeInsets.only(left: 15, bottom: 15),
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
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
