import 'package:cached_network_image/cached_network_image.dart';
import 'package:cricstreak/Utils/firehelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/predictionController.dart';

class PredictionPage extends StatefulWidget {
  const PredictionPage({Key? key}) : super(key: key);

  @override
  State<PredictionPage> createState() => _PredictionPageState();
}

class _PredictionPageState extends State<PredictionPage> {
  PredictionController predictionController = Get.put(PredictionController());

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List l1 = [];
            List docs = snapshot.data!.docs;

            l1 = docs[0]['matches'];
            predictionController.dataList.value = l1;
            // List keeper = l1[predictionController.previvewIndex.value]
            // ['cricteam']['keeper'];
            // List  allrounder= l1[predictionController.previvewIndex.value]
            // ['cricteam']['allrounder'];
            // List batsman = l1[predictionController.previvewIndex.value]
            // ['cricteam']['batsman'];
            // List bowler = l1[predictionController.previvewIndex.value]
            // ['cricteam']['bowler'];
            print(l1);
            return ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 15),
                child: l1[index]['match'] != ""
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          index == 0
                              ? const Text(
                                  "PREDICTION",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                )
                              : Container(),
                          index == 0
                              ? const SizedBox(
                                  height: 10,
                                )
                              : Container(),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xffefefef)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "${l1[index]['match']}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    const Spacer(),
                                    Text(
                                      "${l1[index]['time']}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff021852),
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                InkWell(
                                  onTap: () {
                                    predictionController.previvewIndex.value =
                                        index;

                                    Get.toNamed('pp');
                                  },
                                  child: Container(
                                    height: 230,
                                    decoration: BoxDecoration(
                                      // color: Colors.red,
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    // alignment: Alignment.topLeft,
                                    child: Stack(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                    color: Color(0xFF007432),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft: Radius
                                                                .circular(9),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    9))),
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
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topRight: Radius
                                                                .circular(9),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    9))),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 12, top: 10, left: 12),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Text(
                                                    "CRICSTRIKE XI",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 15),
                                                  ),
                                                  Container(
                                                    height: 30,
                                                    width: 100,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6)),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        const Icon(
                                                          Icons.share,
                                                          color: Colors.black,
                                                          size: 15,
                                                        ),
                                                        const Text(
                                                          "Share Team",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 10),
                                                        ),
                                                        Image.asset(
                                                          "assets/image/cryptocurrency.png",
                                                          height: 15,
                                                          width: 15,
                                                          fit: BoxFit.fill,
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: SizedBox(
                                                      // color: Colors.red,
                                                      height: 160,
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                            child: SizedBox(
                                                              height: double
                                                                  .infinity,
                                                              // color: Colors.black87,
                                                              child: Stack(
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsets.only(
                                                                        top:
                                                                            6.0,
                                                                        right:
                                                                            3),
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .topCenter,
                                                                      child:
                                                                          CircleAvatar(
                                                                        radius:
                                                                            40,
                                                                        backgroundColor:
                                                                            Colors.white,
                                                                        child:
                                                                            CachedNetworkImage(
                                                                          fadeInDuration:
                                                                              const Duration(seconds: 0),
                                                                          filterQuality:
                                                                              FilterQuality.low,
                                                                          fit: BoxFit
                                                                              .fill,
                                                                          imageUrl:
                                                                              "${l1[index]['cricteam']['captain']['image']}",
                                                                          progressIndicatorBuilder: (context, url, downloadProgress) =>
                                                                              Container(),
                                                                          errorWidget: (context, url, error) =>
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: const [
                                                                              Icon(Icons.error),
                                                                              Text(" Image Not available")
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        // NetworkImage(
                                                                        //     "${l1[index]['cricteam']['captain']['image']}"),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          30,
                                                                      margin: const EdgeInsets.only(
                                                                          top:
                                                                              21,
                                                                          right:
                                                                              3),
                                                                      decoration: BoxDecoration(
                                                                          color: Colors
                                                                              .white,
                                                                          borderRadius:
                                                                              BorderRadius.circular(6)),
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child:
                                                                          Text(
                                                                        "${l1[index]['cricteam']['captain']['name']}",
                                                                        maxLines:
                                                                            1,
                                                                        style: const TextStyle(
                                                                            color: Colors
                                                                                .black,
                                                                            fontSize:
                                                                                13,
                                                                            fontWeight:
                                                                                FontWeight.w500),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topRight,
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          21,
                                                                      width: 21,
                                                                      decoration: const BoxDecoration(
                                                                          color: Colors
                                                                              .white,
                                                                          shape:
                                                                              BoxShape.circle),
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child:
                                                                          const Text(
                                                                        "C",
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.black,
                                                                            fontWeight: FontWeight.bold,
                                                                            fontSize: 12),
                                                                      ),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: SizedBox(
                                                              height: double
                                                                  .infinity,
                                                              // color: Colors.green,
                                                              child: Stack(
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsets.only(
                                                                        top:
                                                                            6.0,
                                                                        left:
                                                                            3),
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .topCenter,
                                                                      child:
                                                                          CircleAvatar(
                                                                        radius:
                                                                            40,
                                                                        backgroundColor:
                                                                            Colors.white,
                                                                        child:
                                                                            CachedNetworkImage(
                                                                          fadeInDuration:
                                                                              const Duration(seconds: 0),
                                                                          filterQuality:
                                                                              FilterQuality.none,
                                                                          fit: BoxFit
                                                                              .fill,
                                                                          imageUrl:
                                                                              "${l1[index]['cricteam']['vice_captain']['image']}",
                                                                          progressIndicatorBuilder: (context, url, downloadProgress) =>
                                                                              Container(),
                                                                          errorWidget: (context, url, error) =>
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: const [
                                                                              Icon(Icons.error),
                                                                              Text(" Image Not available")
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          30,
                                                                      padding: const EdgeInsets.only(
                                                                          left:
                                                                              3,
                                                                          right:
                                                                              3),
                                                                      margin: const EdgeInsets.only(
                                                                          top:
                                                                              21,
                                                                          left:
                                                                              3),
                                                                      decoration: BoxDecoration(
                                                                          color: const Color(
                                                                              0xFF021852),
                                                                          borderRadius:
                                                                              BorderRadius.circular(6)),
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child:
                                                                          Text(
                                                                        "${l1[index]['cricteam']['vice_captain']['name']}",
                                                                        maxLines:
                                                                            1,
                                                                        overflow:
                                                                            TextOverflow.ellipsis,
                                                                        style: const TextStyle(
                                                                            color: Colors
                                                                                .white,
                                                                            fontSize:
                                                                                13,
                                                                            fontWeight:
                                                                                FontWeight.w500),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topRight,
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          21,
                                                                      width: 21,
                                                                      decoration: const BoxDecoration(
                                                                          color: Color(
                                                                              0xFF021852),
                                                                          shape:
                                                                              BoxShape.circle),
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child:
                                                                          const Text(
                                                                        "VC",
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.white,
                                                                            fontWeight: FontWeight.bold,
                                                                            fontSize: 12),
                                                                      ),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // color: Colors.black87,
                                                    height: 160,
                                                    width: 145,
                                                    padding: const EdgeInsets.all(6),
                                                    margin: const EdgeInsets.only(
                                                        top: 15),
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: [
                                                              Text(
                                                                "${l1[index]['cricteam']['team1']} ${l1[index]['cricteam']['team1_player']}",
                                                                style: const TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        14),
                                                              ),
                                                              Text(
                                                                "${l1[index]['cricteam']['team2']} ${l1[index]['cricteam']['team2_player']}",
                                                                style: const TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        14),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 6,
                                                        ),
                                                        const Divider(
                                                          thickness: 1.5,
                                                          color: Colors.white,
                                                        ),
                                                        const SizedBox(
                                                          height: 6,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                const Text(
                                                                  "WK",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500),
                                                                ),
                                                                Text(
                                                                  "${l1[index]['cricteam']['wk']}",
                                                                  style: const TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500),
                                                                ),
                                                              ],
                                                            ),
                                                            Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                const Text(
                                                                  "AR",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500),
                                                                ),
                                                                Text(
                                                                  "${l1[index]['cricteam']['ar']}",
                                                                  style: const TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500),
                                                                ),
                                                              ],
                                                            ),
                                                            Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                const Text(
                                                                  "BAT",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500),
                                                                ),
                                                                Text(
                                                                  "${l1[index]['cricteam']['bat']}",
                                                                  style: const TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500),
                                                                ),
                                                              ],
                                                            ),
                                                            Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                const Text(
                                                                  "BOWL",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500),
                                                                ),
                                                                Text(
                                                                  "${l1[index]['cricteam']['bowl']}",
                                                                  style: const TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            height: 50,
                                            decoration: const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(9),
                                                    bottomRight:
                                                        Radius.circular(9))),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 12),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Container(
                                                      height: 30,
                                                      width: 30,
                                                      decoration: const BoxDecoration(
                                                          color:
                                                              Color(0xFF021852),
                                                          shape:
                                                              BoxShape.circle),
                                                      margin: const EdgeInsets.only(
                                                          right: 6),
                                                      alignment:
                                                          Alignment.center,
                                                      child: const Icon(
                                                        Icons.visibility,
                                                        color: Colors.white,
                                                        size: 21,
                                                      ),
                                                    ),
                                                    const Text(
                                                      "Preview",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF021852),
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "PITCH REPORT",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "${l1[index]['pitch_report']}",
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text(
                                  "TOSS",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "${l1[index]['toss']}",
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text(
                                  "PLAYING XI",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "${l1[index]['team1_11']}",
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  "${l1[index]['team2_11']}",
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      )
                    : Container(),
              ),
              physics: const BouncingScrollPhysics(),
              itemCount: l1.length,
            );
          }
          return Container();
        },
        stream: FireHelper.fireHelper.GetPredictionData());
  }
}
