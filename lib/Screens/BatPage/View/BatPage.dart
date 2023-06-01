import 'package:cached_network_image/cached_network_image.dart';
import 'package:cricstreak/Screens/CreateTeam/controller/CreateTeamController.dart';
import 'package:cricstreak/Screens/CreateTeam/model/PlayerDetailModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BatPage extends StatefulWidget {
  const BatPage({Key? key}) : super(key: key);

  @override
  State<BatPage> createState() => _BatPageState();
}

class _BatPageState extends State<BatPage> {

  CreateTeamController createTeamController = Get.put(CreateTeamController());

  @override
  void initState() {
    super.initState();

    createTeamController.BatList.sort((a, b) {
      return b.credit!.compareTo(a.credit!);
    },);
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
                        text: "Batters",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        )
                    ),
                    TextSpan(
                        text: " (Select min 1, max 4)",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16
                        )
                    ),
                  ]
              )
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
                itemCount: createTeamController.BatList.length,
                itemBuilder: (context, index) {
                  return Container(
                    color: createTeamController.BatList[index].selected! ? const Color(0xFFFFF3DC) : Colors.white,
                    padding: EdgeInsets.only(left: Get.width/40, right:  Get.width/40, top: 15),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            if(createTeamController.PlayerCount.value < 11)
                              {
                                if(createTeamController.count['BAT']! < 4)
                                {
                                  print("====== ${createTeamController.BatList[index].selected! ? false : true}");
                                  createTeamController.BatList[index] = PlayerDetailModel(
                                    credit: createTeamController.BatList[index].credit,
                                    selBy: createTeamController.BatList[index].selBy,
                                    avgPts: createTeamController.BatList[index].avgPts,
                                    imageUrl: createTeamController.BatList[index].imageUrl,
                                    selected: createTeamController.BatList[index].selected! ? false : true,
                                    teamName: createTeamController.BatList[index].teamName,
                                    name: createTeamController.BatList[index].name,
                                  );
                                  createTeamController.PlayerCount.value=0;
                                  createTeamController.BATPCount.value = 0;
                                  createTeamController.RCBPCount.value = 0;
                                  createTeamController.CSKPCount.value = 0;
                                  createTeamController.CreditLeftCount.value = 100;
                                  for(PlayerDetailModel player in createTeamController.WKList)
                                  {
                                    if(player.selected!)
                                    {
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
                                  for(PlayerDetailModel player in createTeamController.BatList)
                                  {
                                    if(player.selected!)
                                    {
                                      createTeamController.PlayerCount.value++;
                                      createTeamController.BATPCount.value++;
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
                                  for(PlayerDetailModel player in createTeamController.ARList)
                                  {
                                    if(player.selected!)
                                    {
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
                                  for(PlayerDetailModel player in createTeamController.BowlList)
                                  {
                                    if(player.selected!)
                                    {
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
                                  for(int i=0; i<createTeamController.BatList.length; i++)
                                  {
                                    if(i==index)
                                    {
                                      if(createTeamController.BatList[i].selected!)
                                      {
                                        createTeamController.count['BAT'] = createTeamController.count['BAT']! + 1;
                                      }
                                      else
                                      {
                                        createTeamController.count['BAT'] = createTeamController.count['BAT']! - 1;
                                      }
                                    }
                                  }
                                  print("=====${createTeamController.count['BAT']!} playerrrrr ${createTeamController.PlayerCount.value}");
                                }
                                else
                                {
                                  print("====== ${createTeamController.BatList[index].selected! ? false : true}");
                                  for(int i=0; i<createTeamController.BatList.length; i++)
                                  {
                                    if(i==index)
                                    {
                                      if(createTeamController.BatList[i].selected!)
                                      {
                                        createTeamController.count['BAT'] = createTeamController.count['BAT']! - 1;
                                      }
                                    }
                                  }
                                  createTeamController.BatList[index] = PlayerDetailModel(
                                    credit: createTeamController.BatList[index].credit,
                                    selBy: createTeamController.BatList[index].selBy,
                                    avgPts: createTeamController.BatList[index].avgPts,
                                    imageUrl: createTeamController.BatList[index].imageUrl,
                                    selected: false,
                                    teamName: createTeamController.BatList[index].teamName,
                                    name: createTeamController.BatList[index].name,
                                  );
                                  createTeamController.PlayerCount.value=0;
                                  createTeamController.BATPCount.value = 0;
                                  createTeamController.RCBPCount.value = 0;
                                  createTeamController.CSKPCount.value = 0;
                                  createTeamController.CreditLeftCount.value = 100;
                                  for(PlayerDetailModel player in createTeamController.WKList)
                                  {
                                    if(player.selected!)
                                    {
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
                                  for(PlayerDetailModel player in createTeamController.BatList)
                                  {
                                    if(player.selected!)
                                    {
                                      createTeamController.PlayerCount.value++;
                                      createTeamController.BATPCount.value++;
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
                                  for(PlayerDetailModel player in createTeamController.ARList)
                                  {
                                    if(player.selected!)
                                    {
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
                                  for(PlayerDetailModel player in createTeamController.BowlList)
                                  {
                                    if(player.selected!)
                                    {
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

                                  print("=====${createTeamController.count['BAT']!} playerrrrr ${createTeamController.PlayerCount.value}");
                                }
                              }
                            else
                            {
                              print("====== ${createTeamController.BatList[index].selected! ? false : true}");
                              for(int i=0; i<createTeamController.BatList.length; i++)
                              {
                                if(i==index)
                                {
                                  if(createTeamController.BatList[i].selected!)
                                  {
                                    createTeamController.count['BAT'] = createTeamController.count['BAT']! - 1;
                                  }
                                }
                              }
                              createTeamController.BatList[index] = PlayerDetailModel(
                                credit: createTeamController.BatList[index].credit,
                                selBy: createTeamController.BatList[index].selBy,
                                avgPts: createTeamController.BatList[index].avgPts,
                                imageUrl: createTeamController.BatList[index].imageUrl,
                                selected: false,
                                teamName: createTeamController.BatList[index].teamName,
                                name: createTeamController.BatList[index].name,
                              );
                              createTeamController.PlayerCount.value=0;
                              createTeamController.BATPCount.value = 0;
                              createTeamController.RCBPCount.value = 0;
                              createTeamController.CSKPCount.value = 0;
                              createTeamController.CreditLeftCount.value = 100;
                              for(PlayerDetailModel player in createTeamController.WKList)
                              {
                                if(player.selected!)
                                {
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
                              for(PlayerDetailModel player in createTeamController.BatList)
                              {
                                if(player.selected!)
                                {
                                  createTeamController.PlayerCount.value++;
                                  createTeamController.BATPCount.value++;
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
                              for(PlayerDetailModel player in createTeamController.ARList)
                              {
                                if(player.selected!)
                                {
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
                              for(PlayerDetailModel player in createTeamController.BowlList)
                              {
                                if(player.selected!)
                                {
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

                              print("=====${createTeamController.count['BAT']!} playerrrrr ${createTeamController.PlayerCount.value}");
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
                                        color: Colors.grey, width: 1)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(1000),
                                  child: CachedNetworkImage(
                                    fadeInDuration: const Duration(seconds: 0),
                                    fit: BoxFit.fill,
                                    imageUrl:
                                    "${(createTeamController.BatList[index].imageUrl != null && createTeamController.BatList[index].imageUrl!.isNotEmpty) ? createTeamController.BatList[index].imageUrl : "https://st4.depositphotos.com/9998432/23359/v/600/depositphotos_233595744-stock-illustration-person-gray-photo-placeholder-man.jpg"}",
                                    progressIndicatorBuilder: (context, url, downloadProgress) => Container(),
                                    errorWidget: (context, url, error) => const Icon(Icons.error),
                                  ),
                                ),
                                // child: CircleAvatar(
                                //   radius: Get.width / 17,
                                //   backgroundImage: NetworkImage(
                                //       '${(createTeamController.BatList[index].imageUrl != null && createTeamController.BatList[index].imageUrl!.isNotEmpty) ? createTeamController.BatList[index].imageUrl : "https://www.iplt20.com/assets/images/default-headshot.png"}'),
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
                                        "${createTeamController.BatList[index]
                                            .name}",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            fontSize: 16
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "${createTeamController.BatList[index]
                                          .teamName}",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 14
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: Get.width / 50,),
                              Expanded(
                                child: Text(
                                  "${createTeamController.BatList[index]
                                      .avgPts}",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "${createTeamController.BatList[index]
                                      .selBy}",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "${createTeamController.BatList[index]
                                        .credit}",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(width: Get.width / 50),
                                  Container(
                                    height: Get.width / 18,
                                    width: Get.width / 18,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: createTeamController.BatList[index].selected! ? Colors.red : Colors.green
                                    ),
                                    alignment: Alignment.center,
                                    child: Icon(
                                      createTeamController.BatList[index].selected! ? Icons.remove : Icons.add, color: Colors.white,
                                      size: Get.width / 20,),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const Divider(thickness: 0.4, color: Colors.grey,),
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
