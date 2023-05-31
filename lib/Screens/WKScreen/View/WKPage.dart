import 'package:cricstreak/Screens/CreateTeam/controller/CreateTeamController.dart';
import 'package:cricstreak/Screens/CreateTeam/model/PlayerDetailModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WKPage extends StatefulWidget {
  const WKPage({Key? key}) : super(key: key);

  @override
  State<WKPage> createState() => _WKPageState();
}

class _WKPageState extends State<WKPage> {
  CreateTeamController createTeamController = Get.put(CreateTeamController());

  @override
  void initState() {
    super.initState();

    createTeamController.WKList.sort(
      (a, b) {
        return b.credit!.compareTo(a.credit!);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          const Text.rich(TextSpan(children: [
            TextSpan(
                text: "Wicket Keepers",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16)),
            TextSpan(
                text: " (Select min 1, max 4)",
                style: TextStyle(color: Colors.grey, fontSize: 16)),
          ])),
          Padding(
            padding:  EdgeInsets.only(left: Get.width/30, right: Get.width/25, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Player",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Text(
                  "Avg Pts",
                  style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: Get.width / 25,
                ),
                Text(
                  "sel by",
                  style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: Get.width / 15,
                ),
                const Text(
                  "Credit",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: createTeamController.WKList.length,
                itemBuilder: (context, index) {
                  return Container(
                    color: createTeamController.WKList[index].selected!
                        ? const Color(0xFFFFF3DC)
                        : Colors.white,
                    padding:
                         EdgeInsets.only(left: Get.width/40, right:  Get.width/40, top: 15),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            // if(createTeamController.count['WK']! < 5)
                            //   {
                            print(
                                "====== ${createTeamController.WKList[index].selected! ? false : true}");
                            createTeamController.WKList[index] =
                                PlayerDetailModel(
                              credit: createTeamController.WKList[index].credit,
                              selBy: createTeamController.WKList[index].selBy,
                              avgPts: createTeamController.WKList[index].avgPts,
                              imageUrl:
                                  createTeamController.WKList[index].imageUrl,
                              selected:
                                  createTeamController.WKList[index].selected!
                                      ? false
                                      : true,
                              teamName:
                                  createTeamController.WKList[index].teamName,
                              name: createTeamController.WKList[index].name,
                            );
                            createTeamController.PlayerCount.value = 0;
                            for (PlayerDetailModel player
                                in createTeamController.WKList) {
                              if (player.selected!) {
                                createTeamController.PlayerCount.value++;
                              }
                            }
                            for (PlayerDetailModel player
                                in createTeamController.BatList) {
                              if (player.selected!) {
                                createTeamController.PlayerCount.value++;
                              }
                            }
                            for (PlayerDetailModel player
                                in createTeamController.ARList) {
                              if (player.selected!) {
                                createTeamController.PlayerCount.value++;
                              }
                            }
                            for (PlayerDetailModel player
                                in createTeamController.BowlList) {
                              if (player.selected!) {
                                createTeamController.PlayerCount.value++;
                              }
                            }
                            //   createTeamController.count['WK'] = createTeamController.count['WK']! + 1;
                            //   print("=====${createTeamController.count['WK']} playerrrrr ${createTeamController.PlayerCount.value}");
                            // }
                          },
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.grey, width: 1)),
                                child: CircleAvatar(
                                  radius: Get.width / 17,
                                  backgroundImage: NetworkImage(
                                      '${(createTeamController.WKList[index].imageUrl != null && createTeamController.WKList[index].imageUrl!.isNotEmpty) ? createTeamController.WKList[index].imageUrl : "https://www.iplt20.com/assets/images/default-headshot.png"}'),
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: Get.width / 50,
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: Get.width / 3.9,
                                      child: Text(
                                        "${createTeamController.WKList[index].name}",
                                        maxLines: 1,
                                        style: const TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            fontSize: 16),
                                      ),
                                    ),
                                    Text(
                                      "${createTeamController.WKList[index].teamName}",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: Get.width / 50,
                              ),
                              Expanded(
                                child: Text(
                                  "${createTeamController.WKList[index].avgPts}",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "${createTeamController.WKList[index].selBy}",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "${createTeamController.WKList[index].credit}",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: Get.width / 50),
                                  Container(
                                    height: Get.width / 18,
                                    width: Get.width / 18,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: createTeamController
                                                .WKList[index].selected!
                                            ? Colors.red
                                            : Colors.green),
                                    alignment: Alignment.center,
                                    child: Icon(
                                      createTeamController
                                              .WKList[index].selected!
                                          ? Icons.remove
                                          : Icons.add,
                                      color: Colors.white,
                                      size: Get.width / 20,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const Divider(
                          thickness: 0.4,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
