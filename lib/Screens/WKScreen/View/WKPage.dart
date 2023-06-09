import 'package:cached_network_image/cached_network_image.dart';
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

    createTeamController.wkList.sort(
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
          const SizedBox(height: 15,),
          const Text.rich(
            TextSpan(
              children: [
            TextSpan(
                text: "Wicket Keepers",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16)),
            TextSpan(
                text: " (Select min 1, max 4)",
                style: TextStyle(color: Colors.grey, fontSize: 16)),
          ]
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: Get.width/30, right: Get.width/25, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
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
                itemCount: createTeamController.wkList.length,
                itemBuilder: (context, index) {
                  return Container(
                    //F5F3F6
                    color: createTeamController.wkList[index].selected!
                        ? const Color(0xFFFFF3DC)
                        : Colors.white,
                    padding: EdgeInsets.only(left: Get.width/40, right:  Get.width/40, top: 15),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            if(createTeamController.PlayerCount.value < 11)
                            {
                              print("========CCCC ${createTeamController.CreditLeftCount.value % 2} ${(createTeamController.CreditLeftCount.value % 2 == 0 || createTeamController.CreditLeftCount.value % 2 == 1) ? createTeamController.CreditLeftCount.value.round() : createTeamController.CreditLeftCount.value.toStringAsFixed(1)}");
                                if(createTeamController.count['WK']! < 4)
                                {
                                  print(
                                      "====== ${createTeamController.wkList[index].selected! ? false : true}");
                                  createTeamController.wkList[index] =
                                      PlayerDetailModel(
                                        credit: createTeamController.wkList[index].credit,
                                        selBy: createTeamController.wkList[index].selBy,
                                        avgPts: createTeamController.wkList[index].avgPts,
                                        imageUrl:
                                        createTeamController.wkList[index].imageUrl,
                                        selected:
                                        createTeamController.wkList[index].selected!
                                            ? false
                                            : true,
                                        teamName: createTeamController.wkList[index].teamName,
                                        firstName: createTeamController.wkList[index].firstName,
                                        lastName: createTeamController.wkList[index].lastName,
                                        point: createTeamController.wkList[index].point,
                                        color: createTeamController.wkList[index].color,
                                        captain: createTeamController.wkList[index].captain,
                                        vicecaptain: createTeamController.wkList[index].vicecaptain,
                                        capSelby: createTeamController.wkList[index].capSelby,
                                        vicecapSelby: createTeamController.wkList[index].vicecapSelby,
                                      );
                                  createTeamController.PlayerCount.value = 0;
                                  createTeamController.WKPCount.value = 0;
                                  createTeamController.RCBPCount.value = 0;
                                  createTeamController.CSKPCount.value = 0;
                                  createTeamController.CreditLeftCount.value = 100;
                                  for (PlayerDetailModel player in createTeamController.wkList) {
                                    if (player.selected!) {
                                      createTeamController.PlayerCount.value++;
                                      createTeamController.WKPCount.value++;
                                      createTeamController.CreditLeftCount.value = createTeamController.CreditLeftCount.value - player.credit!;
                                      if(player.teamName! == "RCB")
                                        {
                                          createTeamController.RCBPCount.value++;
                                        }
                                      else if(player.teamName! == "CSK")
                                        {
                                          createTeamController.CSKPCount.value++;
                                        }
                                    }
                                  }
                                  for (PlayerDetailModel player
                                  in createTeamController.batList) {
                                    if (player.selected!) {
                                      createTeamController.PlayerCount.value++;
                                      createTeamController.CreditLeftCount.value = createTeamController.CreditLeftCount.value - player.credit!;
                                      if(player.teamName! == "RCB")
                                      {
                                        createTeamController.RCBPCount.value++;
                                      }
                                      else if(player.teamName! == "CSK")
                                      {
                                        createTeamController.CSKPCount.value++;
                                      }
                                    }
                                  }
                                  for (PlayerDetailModel player
                                  in createTeamController.arList) {
                                    if (player.selected!) {
                                      createTeamController.PlayerCount.value++;
                                      createTeamController.CreditLeftCount.value = createTeamController.CreditLeftCount.value - player.credit!;
                                      if(player.teamName! == "RCB")
                                      {
                                        createTeamController.RCBPCount.value++;
                                      }
                                      else if(player.teamName! == "CSK")
                                      {
                                        createTeamController.CSKPCount.value++;
                                      }
                                    }
                                  }
                                  for (PlayerDetailModel player
                                  in createTeamController.bowlList) {
                                    if (player.selected!) {
                                      createTeamController.PlayerCount.value++;
                                      createTeamController.CreditLeftCount.value = createTeamController.CreditLeftCount.value - player.credit!;
                                      if(player.teamName! == "RCB")
                                      {
                                        createTeamController.RCBPCount.value++;
                                      }
                                      else if(player.teamName! == "CSK")
                                      {
                                        createTeamController.CSKPCount.value++;
                                      }
                                    }
                                  }
                                  for(int i=0; i<createTeamController.wkList.length; i++)
                                  {
                                    if(i==index)
                                    {
                                      print(""
                                          "+++===== ${createTeamController.wkList[index].selected!}");
                                      if(createTeamController.wkList[i].selected!)
                                      {
                                        createTeamController.count['WK'] = createTeamController.count['WK']! + 1;
                                      }
                                      else
                                      {
                                        createTeamController.count['WK'] = createTeamController.count['WK']! - 1;
                                      }
                                    }
                                  }
                                  print("=====${createTeamController.count['WK']} playerrrrr ${createTeamController.PlayerCount.value}");
                                }
                                else
                                {
                                  print("----======${createTeamController.wkList[index].selected!} ${createTeamController.wkList[index].selected! ? false : true}");
                                  for(int i=0; i<createTeamController.wkList.length; i++)
                                  {
                                    if(i==index)
                                    {
                                      print(""
                                          "+++===== ${createTeamController.wkList[index].selected!}");
                                      if(createTeamController.wkList[i].selected!)
                                      {
                                        createTeamController.count['WK'] = createTeamController.count['WK']! - 1;
                                      }
                                    }
                                  }
                                  createTeamController.wkList[index] =
                                      PlayerDetailModel(
                                        credit: createTeamController.wkList[index].credit,
                                        selBy: createTeamController.wkList[index].selBy,
                                        avgPts: createTeamController.wkList[index].avgPts,
                                        imageUrl:
                                        createTeamController.wkList[index].imageUrl,
                                        selected: false,
                                        teamName:
                                        createTeamController.wkList[index].teamName,
                                        firstName: createTeamController.wkList[index].firstName,
                                        lastName: createTeamController.wkList[index].lastName,
                                        point: createTeamController.wkList[index].point,
                                        color: createTeamController.wkList[index].color,
                                        captain: createTeamController.wkList[index].captain,
                                        vicecaptain: createTeamController.wkList[index].vicecaptain,
                                        capSelby: createTeamController.wkList[index].capSelby,
                                        vicecapSelby: createTeamController.wkList[index].vicecapSelby,
                                      );
                                  createTeamController.PlayerCount.value = 0;
                                  createTeamController.WKPCount.value = 0;
                                  createTeamController.RCBPCount.value = 0;
                                  createTeamController.CSKPCount.value = 0;
                                  createTeamController.CreditLeftCount.value = 100;
                                  for (PlayerDetailModel player in createTeamController.wkList) {
                                    if (player.selected!) {
                                      createTeamController.PlayerCount.value++;
                                      createTeamController.WKPCount.value ++;
                                      createTeamController.CreditLeftCount.value = createTeamController.CreditLeftCount.value - player.credit!;
                                      if(player.teamName! == "RCB")
                                      {
                                        createTeamController.RCBPCount.value++;
                                      }
                                      else if(player.teamName! == "CSK")
                                      {
                                        createTeamController.CSKPCount.value++;
                                      }
                                    }
                                  }
                                  for (PlayerDetailModel player in createTeamController.batList) {
                                    if (player.selected!) {
                                      createTeamController.PlayerCount.value++;
                                      createTeamController.CreditLeftCount.value = createTeamController.CreditLeftCount.value - player.credit!;
                                      if(player.teamName! == "RCB")
                                      {
                                        createTeamController.RCBPCount.value++;
                                      }
                                      else if(player.teamName! == "CSK")
                                      {
                                        createTeamController.CSKPCount.value++;
                                      }
                                    }
                                  }
                                  for (PlayerDetailModel player in createTeamController.arList) {
                                    if (player.selected!) {
                                      createTeamController.PlayerCount.value++;
                                      createTeamController.CreditLeftCount.value = createTeamController.CreditLeftCount.value - player.credit!;
                                      if(player.teamName! == "RCB")
                                      {
                                        createTeamController.RCBPCount.value++;
                                      }
                                      else if(player.teamName! == "CSK")
                                      {
                                        createTeamController.CSKPCount.value++;
                                      }
                                    }
                                  }
                                  for (PlayerDetailModel player in createTeamController.bowlList) {
                                    if (player.selected!) {
                                      createTeamController.PlayerCount.value++;
                                      createTeamController.CreditLeftCount.value = createTeamController.CreditLeftCount.value - player.credit!;
                                      if(player.teamName! == "RCB")
                                      {
                                        createTeamController.RCBPCount.value++;
                                      }
                                      else if(player.teamName! == "CSK")
                                      {
                                        createTeamController.CSKPCount.value++;
                                      }
                                    }
                                  }
                                  print("=====${createTeamController.count['WK']} playerrrrr ${createTeamController.PlayerCount.value}");
                                }
                              }
                            else
                            {
                              print("EEE----======${createTeamController.PlayerCount} ${createTeamController.wkList[index].selected!} ${createTeamController.wkList[index].selected! ? false : true}");
                              for(int i=0; i<createTeamController.wkList.length; i++)
                              {
                                if(i==index)
                                {
                                  print(""
                                      "EEE+++===== ${createTeamController.wkList[index].selected!}");
                                  if(createTeamController.wkList[i].selected!)
                                  {
                                    createTeamController.count['WK'] = createTeamController.count['WK']! - 1;
                                  }
                                }
                              }
                              createTeamController.wkList[index] =
                                  PlayerDetailModel(
                                    credit: createTeamController.wkList[index].credit,
                                    selBy: createTeamController.wkList[index].selBy,
                                    avgPts: createTeamController.wkList[index].avgPts,
                                    imageUrl:
                                    createTeamController.wkList[index].imageUrl,
                                    selected: false,
                                    teamName:
                                    createTeamController.wkList[index].teamName,
                                    firstName: createTeamController.wkList[index].firstName,
                                    lastName: createTeamController.wkList[index].lastName,
                                    point: createTeamController.wkList[index].point,
                                    color: createTeamController.wkList[index].color,
                                    captain: createTeamController.wkList[index].captain,
                                    vicecaptain: createTeamController.wkList[index].vicecaptain,
                                    capSelby: createTeamController.wkList[index].capSelby,
                                    vicecapSelby: createTeamController.wkList[index].vicecapSelby,
                                  );
                              createTeamController.PlayerCount.value = 0;
                              createTeamController.WKPCount.value = 0;
                              createTeamController.RCBPCount.value = 0;
                              createTeamController.CSKPCount.value = 0;
                              createTeamController.CreditLeftCount.value = 100;
                              for (PlayerDetailModel player in createTeamController.wkList) {
                                if (player.selected!) {
                                  createTeamController.PlayerCount.value++;
                                  createTeamController.WKPCount.value ++;
                                  createTeamController.CreditLeftCount.value = createTeamController.CreditLeftCount.value - player.credit!;
                                  if(player.teamName! == "RCB")
                                  {
                                    createTeamController.RCBPCount.value++;
                                  }
                                  else if(player.teamName! == "CSK")
                                  {
                                    createTeamController.CSKPCount.value++;
                                  }
                                }
                              }
                              for (PlayerDetailModel player in createTeamController.batList) {
                                if (player.selected!) {
                                  createTeamController.PlayerCount.value++;
                                  createTeamController.CreditLeftCount.value = createTeamController.CreditLeftCount.value - player.credit!;
                                  if(player.teamName! == "RCB")
                                  {
                                    createTeamController.RCBPCount.value++;
                                  }
                                  else if(player.teamName! == "CSK")
                                  {
                                    createTeamController.CSKPCount.value++;
                                  }
                                }
                              }
                              for (PlayerDetailModel player in createTeamController.arList) {
                                if (player.selected!) {
                                  createTeamController.PlayerCount.value++;
                                  createTeamController.CreditLeftCount.value = createTeamController.CreditLeftCount.value - player.credit!;
                                  if(player.teamName! == "RCB")
                                  {
                                    createTeamController.RCBPCount.value++;
                                  }
                                  else if(player.teamName! == "CSK")
                                  {
                                    createTeamController.CSKPCount.value++;
                                  }
                                }
                              }
                              for (PlayerDetailModel player in createTeamController.bowlList) {
                                if (player.selected!) {
                                  createTeamController.PlayerCount.value++;
                                  createTeamController.CreditLeftCount.value = createTeamController.CreditLeftCount.value - player.credit!;
                                  if(player.teamName! == "RCB")
                                  {
                                    createTeamController.RCBPCount.value++;
                                  }
                                  else if(player.teamName! == "CSK")
                                  {
                                    createTeamController.CSKPCount.value++;
                                  }
                                }
                              }
                              print("=====${createTeamController.count['WK']} playerrrrr ${createTeamController.PlayerCount.value}");
                            }
                          },
                          child: Row(
                            children: [
                              Container(
                                height: Get.width / 8,
                                width: Get.width / 8,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.grey, width: 1)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(1000),
                                  child: CachedNetworkImage(
                                    fadeInDuration: const Duration(seconds: 0),
                                    fit: BoxFit.fill,
                                    imageUrl:
                                    "${(createTeamController.wkList[index].imageUrl != null && createTeamController.wkList[index].imageUrl!.isNotEmpty) ? createTeamController.wkList[index].imageUrl : "https://st4.depositphotos.com/9998432/23359/v/600/depositphotos_233595744-stock-illustration-person-gray-photo-placeholder-man.jpg"}",
                                    progressIndicatorBuilder: (context, url, downloadProgress) => Container(),
                                    errorWidget: (context, url, error) => const Icon(Icons.error),
                                  ),
                                ),
                                // child: CircleAvatar(
                                //   radius: Get.width / 17,
                                //   backgroundImage: NetworkImage(
                                //       '${(createTeamController.WKList[index].imageUrl != null && createTeamController.WKList[index].imageUrl!.isNotEmpty) ? createTeamController.WKList[index].imageUrl : "https://www.iplt20.com/assets/images/default-headshot.png"}'),
                                //   backgroundColor: Colors.white,
                                // ),
                              ),
                              SizedBox(width: Get.width / 50,),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: Get.width / 3.9,
                                      child: Text(
                                        "${createTeamController.wkList[index].firstName} ${createTeamController.wkList[index].lastName}",
                                        maxLines: 1,
                                        style: const TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            fontSize: 16),
                                      ),
                                    ),
                                    Text(
                                      "${createTeamController.wkList[index].teamName}",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: Get.width / 50,),
                              Expanded(
                                child: Text(
                                  "${createTeamController.wkList[index].avgPts}",
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
                                  "${createTeamController.wkList[index].selBy}",
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
                                    "${createTeamController.wkList[index].credit}",
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
                                                .wkList[index].selected!
                                            ? Colors.red
                                            : Colors.green),
                                    alignment: Alignment.center,
                                    child: Icon(
                                      createTeamController
                                              .wkList[index].selected!
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
