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
                              ? Text(
                                  "PREDICTION",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                )
                              : Container(),
                          index == 0
                              ? SizedBox(
                                  height: 10,
                                )
                              : Container(),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffefefef)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "${l1[index]['match']}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    Spacer(),
                                    Text(
                                      "${l1[index]['time']}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff021852),
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                                SizedBox(
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
                                                decoration: BoxDecoration(
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
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF0B8640),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF007432),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF0B8640),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF007432),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF0B8640),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF007432),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF0B8640),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
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
                                          padding: EdgeInsets.only(
                                              right: 12, top: 10, left: 12),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
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
                                                        Icon(
                                                          Icons.share,
                                                          color: Colors.black,
                                                          size: 15,
                                                        ),
                                                        Text(
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
                                                    child: Container(
                                                      // color: Colors.red,
                                                      height: 160,
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              height: double
                                                                  .infinity,
                                                              // color: Colors.black87,
                                                              child: Stack(
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsets.only(
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
                                                                              Duration(seconds: 0),
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
                                                                            children: [
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
                                                                      margin: EdgeInsets.only(
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
                                                                        style: TextStyle(
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
                                                                      decoration: BoxDecoration(
                                                                          color: Colors
                                                                              .white,
                                                                          shape:
                                                                              BoxShape.circle),
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child:
                                                                          Text(
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
                                                            child: Container(
                                                              height: double
                                                                  .infinity,
                                                              // color: Colors.green,
                                                              child: Stack(
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsets.only(
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
                                                                              Duration(seconds: 0),
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
                                                                            children: [
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
                                                                      padding: EdgeInsets.only(
                                                                          left:
                                                                              3,
                                                                          right:
                                                                              3),
                                                                      margin: EdgeInsets.only(
                                                                          top:
                                                                              21,
                                                                          left:
                                                                              3),
                                                                      decoration: BoxDecoration(
                                                                          color: Color(
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
                                                                        style: TextStyle(
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
                                                                      decoration: BoxDecoration(
                                                                          color: Color(
                                                                              0xFF021852),
                                                                          shape:
                                                                              BoxShape.circle),
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child:
                                                                          Text(
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
                                                    padding: EdgeInsets.all(6),
                                                    margin: EdgeInsets.only(
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
                                                                style: TextStyle(
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
                                                                style: TextStyle(
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
                                                        SizedBox(
                                                          height: 6,
                                                        ),
                                                        Divider(
                                                          thickness: 1.5,
                                                          color: Colors.white,
                                                        ),
                                                        SizedBox(
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
                                                                Text(
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
                                                                  style: TextStyle(
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
                                                                Text(
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
                                                                  style: TextStyle(
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
                                                                Text(
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
                                                                  style: TextStyle(
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
                                                                Text(
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
                                                                  style: TextStyle(
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
                                            padding: EdgeInsets.symmetric(
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
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Color(0xFF021852),
                                                          shape:
                                                              BoxShape.circle),
                                                      margin: EdgeInsets.only(
                                                          right: 6),
                                                      alignment:
                                                          Alignment.center,
                                                      child: Icon(
                                                        Icons.visibility,
                                                        color: Colors.white,
                                                        size: 21,
                                                      ),
                                                    ),
                                                    Text(
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
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "PITCH REPORT",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "${l1[index]['pitch_report']}",
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "TOSS",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "${l1[index]['toss']}",
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "PLAYING XI",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "${l1[index]['team1_11']}",
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  "${l1[index]['team2_11']}",
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      )
                    : Container(),
              ),
              physics: BouncingScrollPhysics(),
              itemCount: l1.length,
            );
          }
          return Container();
        },
        stream: FireHelper.fireHelper.GetPredictionData());
  }
}
