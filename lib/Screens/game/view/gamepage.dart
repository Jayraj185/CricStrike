import 'package:cricstreak/Screens/game/Controller/GameController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

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
      physics: BouncingScrollPhysics(),
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
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 9,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  SizedBox(width: 16,),
                  Container(
                    height: 215,
                    width: 170,
                    child: Image.asset(
                      "assets/image/Events_2.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Container(
                    height: 215,
                    width: 170,
                    child: Image.asset(
                      "assets/image/Events_2.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Container(
                    height: 215,
                    width: 170,
                    child: Image.asset(
                      "assets/image/Events_3.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 9,
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          SizedBox(
            height: 9,
          ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 16),
             child: Text(
              "Games",
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w400, fontSize: 18),
          ),
           ),
          SizedBox(
            height: 9,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: gameController.GameList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 185,
                  mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () async {
                    await launchUrl(
                        Uri.parse("${gameController.GameList[index].link}"));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff021852),
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  "${gameController.GameList[index].image}",
                                  fit: BoxFit.fill,
                                  height: double.infinity,
                                  width: double.infinity,
                                ))),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 55,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                color: Colors.black38),
                            padding:
                                EdgeInsets.symmetric(horizontal: 15, vertical: 9),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${gameController.GameList[index].name}",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 12,
                                      width: 12,
                                      child: Image.asset(
                                          "assets/image/players_logo.png"),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      "${gameController.GameList[index].playres} players",
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
