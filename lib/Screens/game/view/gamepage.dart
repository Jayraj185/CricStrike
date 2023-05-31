import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cricstreak/Screens/game/Controller/GameController.dart';
import 'package:cricstreak/Screens/game/model/GameModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../Utils/firehelper.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  GameController gameController = Get.put(GameController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 9),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Events / Announcements",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
          ),
          Padding
            (
            padding: const EdgeInsets.only(
              top: 9,
            ),
            child: StreamBuilder(
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List l1 = [];
                  dynamic docs = snapshot.data!.docs;
                  print("=====================DATTTTT ${docs[0]['event']}");
                  for(var doc in docs[0]['event'])
                  {
                    l1.add(doc);
                  }
                  return
                    SizedBox(height: 215,
                      child: ListView.builder(shrinkWrap: true,padding: const EdgeInsets.only(right: 16),
                        scrollDirection: Axis.horizontal,
                        physics:  const BouncingScrollPhysics(),
                        itemCount: l1.length,
                        itemBuilder: (context, index) {
                          return Container(
                                      height: 215,
                                      width: 170,margin: index == 0?const EdgeInsets.only(left: 16):const EdgeInsets.only(left: 10),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color(0xff021852),),
                                      child: ClipRRect(borderRadius: BorderRadius.circular(15),
                                        child: CachedNetworkImage(fadeInDuration: const Duration(seconds: 0),
                                          fit: BoxFit.fill,
                                          imageUrl:
                                          "${l1[index]}",
                                          progressIndicatorBuilder:
                                              (context, url, downloadProgress) =>
                                              Container(

                                              ),
                                          errorWidget: (context, url, error) => Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: const [
                                              Icon(Icons.error),
                                              Text(" Image Not available")
                                            ],
                                          ),
                                        ),

                                      //   Image.network(
                                      //     "${l1[index]}",
                                      //     fit: BoxFit.fill,
                                      //   ),
                                      // ),
                                    ));
                        },
                      ),
                    );
                } else if (snapshot.hasError) {
                  return Center(child: Text("${snapshot.error}"));
                }
                return const SizedBox(height:215,child: Center(child: CircularProgressIndicator(color: Colors.white,)));
              },
              stream: FireHelper.fireHelper.GetData(),
            )
            // child: SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   physics: BouncingScrollPhysics(),
            //   child: Row(
            //     children: [
            //       SizedBox(width: 16,),
            //       Container(
            //         height: 215,
            //         width: 170,
            //         child: Image.asset(
            //           "assets/image/Events_2.png",
            //           fit: BoxFit.fill,
            //         ),
            //       ),
            //       SizedBox(
            //         width: 9,
            //       ),
            //       Container(
            //         height: 215,
            //         width: 170,
            //         child: Image.asset(
            //           "assets/image/Events_2.png",
            //           fit: BoxFit.fill,
            //         ),
            //       ),
            //       SizedBox(
            //         width: 9,
            //       ),
            //       Container(
            //         height: 215,
            //         width: 170,
            //         child: Image.asset(
            //           "assets/image/Events_3.png",
            //           fit: BoxFit.fill,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ),
          const SizedBox(
            height: 9,
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 9,
          ),
           const Padding(
             padding: EdgeInsets.symmetric(horizontal: 16),
             child: Text(
              "Games",
              style:TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500
              ),
          ),
           ),
          const SizedBox(
            height: 9,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child:  StreamBuilder(
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<GameModel> l1 = [];
                  dynamic docs = snapshot.data!.docs;
                  print("=====================DATTTTT ${docs[0]['games']}");
                  for(var doc in docs[0]['games'])
                    {
                      l1.add(GameModel().fromJson(doc));
                    }
                  return
                   GridView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: l1.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () async {
                          await launchUrl(
                              Uri.parse("${l1[index].link}"));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xff021852),
                              borderRadius: BorderRadius.circular(20)),
                          child: Stack(
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child:CachedNetworkImage(fadeInDuration: const Duration(seconds: 0),filterQuality: FilterQuality.high,
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
                                          children: const [
                                            Icon(Icons.error),
                                            Text(" Image Not available")
                                          ],
                                        ),
                                      ),



                                    // Image.network(
                                      //   "${l1[index].image}",
                                      //   fit: BoxFit.fill,
                                      //   height: double.infinity,
                                      //   width: double.infinity,
                                      // )


                                    ),),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 34,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20)),
                                      color: Colors.black38),
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 15, vertical: 9),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${l1[index].name}",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                      // SizedBox(
                                      //   height: 6,
                                      // ),
                                      // Row(
                                      //   children: [
                                      //     Container(
                                      //       height: 12,
                                      //       width: 12,
                                      //       child: Image.asset(
                                      //           "assets/image/players_logo.png"),
                                      //     ),
                                      //     SizedBox(
                                      //       width: 6,
                                      //     ),
                                      //     Text(
                                      //       "${l1[index].playres} players",
                                      //       style: const TextStyle(
                                      //         color: Colors.white,
                                      //         fontSize: 12,
                                      //       ),
                                      //     ),
                                      //   ],
                                      // ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Center(child: Text("${snapshot.error}"));
                }
                return Container();
              },
              stream: FireHelper.fireHelper.GetData(),
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
