import 'package:cached_network_image/cached_network_image.dart';
import 'package:cricstreak/Screens/CreateTeam/controller/CreateTeamController.dart';
import 'package:cricstreak/Screens/CreateTeam/model/PlayerDetailModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BowlPage extends StatefulWidget {
  const BowlPage({Key? key}) : super(key: key);

  @override
  State<BowlPage> createState() => _BowlPageState();
}

class _BowlPageState extends State<BowlPage> {

  CreateTeamController createTeamController = Get.put(CreateTeamController());

  @override
  void initState() {
    super.initState();

    createTeamController.bowlList.sort((a, b) {
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
                        text: "Bowlers",
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
                itemCount: createTeamController.bowlList.length,
                itemBuilder: (context, index) {
                  return Container(
                    color: createTeamController.bowlList[index].selected! ? const Color(0xFFFFF3DC) : Colors.white,
                    padding: EdgeInsets.only(left: Get.width/40, right:  Get.width/40, top: 15),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            if(createTeamController.PlayerCount.value < 11)
                              {
                                if(createTeamController.count['BOWL']! < 4)
                                {
                                  print("====== ${createTeamController.bowlList[index].selected! ? false : true}");
                                  createTeamController.bowlList[index] = PlayerDetailModel(
                                    credit: createTeamController.bowlList[index].credit,
                                    selBy: createTeamController.bowlList[index].selBy,
                                    avgPts: createTeamController.bowlList[index].avgPts,
                                    imageUrl: createTeamController.bowlList[index].imageUrl,
                                    selected: createTeamController.bowlList[index].selected! ? false : true,
                                    teamName: createTeamController.bowlList[index].teamName,
                                    firstName: createTeamController.bowlList[index].firstName,
                                    lastName: createTeamController.bowlList[index].lastName,
                                    point: createTeamController.bowlList[index].point,
                                    color: createTeamController.bowlList[index].color,
                                    captain: createTeamController.bowlList[index].captain,
                                    visecaptain: createTeamController.bowlList[index].visecaptain,
                                    capSelby: createTeamController.bowlList[index].capSelby,
                                    vicecapSelby: createTeamController.bowlList[index].vicecapSelby,
                                  );
                                  createTeamController.PlayerCount.value=0;
                                  createTeamController.BOWLPCount.value = 0;
                                  createTeamController.RCBPCount.value = 0;
                                  createTeamController.CSKPCount.value = 0;
                                  createTeamController.CreditLeftCount.value = 100;
                                  for(PlayerDetailModel player in createTeamController.wkList)
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
                                  for(PlayerDetailModel player in createTeamController.batList)
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
                                  for(PlayerDetailModel player in createTeamController.arList)
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
                                  for(PlayerDetailModel player in createTeamController.bowlList)
                                  {
                                    if(player.selected!)
                                    {
                                      createTeamController.PlayerCount.value++;
                                      createTeamController.BOWLPCount.value++;
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
                                  for(int i=0; i<createTeamController.bowlList.length; i++)
                                  {
                                    if(i==index)
                                    {
                                      if(createTeamController.bowlList[i].selected!)
                                      {
                                        createTeamController.count['BOWL'] = createTeamController.count['BOWL']! + 1;
                                      }
                                      else
                                      {
                                        createTeamController.count['BOWL'] = createTeamController.count['BOWL']! - 1;
                                      }
                                    }
                                  }
                                  print("=====${createTeamController.count['AR']} playerrrrr ${createTeamController.PlayerCount.value}");
                                }
                                else
                                {
                                  print("====== ${createTeamController.bowlList[index].selected! ? false : true}");
                                  for(int i=0; i<createTeamController.bowlList.length; i++)
                                  {
                                    if(i==index)
                                    {
                                      if(createTeamController.bowlList[i].selected!)
                                      {
                                        createTeamController.count['BOWL'] = createTeamController.count['BOWL']! - 1;
                                      }
                                    }
                                  }
                                  createTeamController.bowlList[index] = PlayerDetailModel(
                                    credit: createTeamController.bowlList[index].credit,
                                    selBy: createTeamController.bowlList[index].selBy,
                                    avgPts: createTeamController.bowlList[index].avgPts,
                                    imageUrl: createTeamController.bowlList[index].imageUrl,
                                    selected: false,
                                    teamName: createTeamController.bowlList[index].teamName,
                                    firstName: createTeamController.bowlList[index].firstName,
                                    lastName: createTeamController.bowlList[index].lastName,
                                    point: createTeamController.bowlList[index].point,
                                    color: createTeamController.bowlList[index].color,
                                    captain: createTeamController.bowlList[index].captain,
                                    visecaptain: createTeamController.bowlList[index].visecaptain,
                                    capSelby: createTeamController.bowlList[index].capSelby,
                                    vicecapSelby: createTeamController.bowlList[index].vicecapSelby,
                                  );
                                  createTeamController.PlayerCount.value=0;
                                  createTeamController.BOWLPCount.value = 0;
                                  createTeamController.RCBPCount.value = 0;
                                  createTeamController.CSKPCount.value = 0;
                                  createTeamController.CreditLeftCount.value = 100;
                                  for(PlayerDetailModel player in createTeamController.wkList)
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
                                  for(PlayerDetailModel player in createTeamController.batList)
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
                                  for(PlayerDetailModel player in createTeamController.arList)
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
                                  for(PlayerDetailModel player in createTeamController.bowlList)
                                  {
                                    if(player.selected!)
                                    {
                                      createTeamController.PlayerCount.value++;
                                      createTeamController.BOWLPCount.value++;
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
                                  print("=====${createTeamController.count['BOWL']} playerrrrr ${createTeamController.PlayerCount.value}");
                                }
                              }
                            else
                            {
                              print("====== ${createTeamController.bowlList[index].selected! ? false : true}");
                              for(int i=0; i<createTeamController.bowlList.length; i++)
                              {
                                if(i==index)
                                {
                                  if(createTeamController.bowlList[i].selected!)
                                  {
                                    createTeamController.count['BOWL'] = createTeamController.count['BOWL']! - 1;
                                  }
                                }
                              }
                              createTeamController.bowlList[index] = PlayerDetailModel(
                                credit: createTeamController.bowlList[index].credit,
                                selBy: createTeamController.bowlList[index].selBy,
                                avgPts: createTeamController.bowlList[index].avgPts,
                                imageUrl: createTeamController.bowlList[index].imageUrl,
                                selected: false,
                                teamName: createTeamController.bowlList[index].teamName,
                                firstName: createTeamController.bowlList[index].firstName,
                                lastName: createTeamController.bowlList[index].lastName,
                                point: createTeamController.bowlList[index].point,
                                color: createTeamController.bowlList[index].color,
                                captain: createTeamController.bowlList[index].captain,
                                visecaptain: createTeamController.bowlList[index].visecaptain,
                                capSelby: createTeamController.bowlList[index].capSelby,
                                vicecapSelby: createTeamController.bowlList[index].vicecapSelby,
                              );
                              createTeamController.PlayerCount.value=0;
                              createTeamController.BOWLPCount.value = 0;
                              createTeamController.RCBPCount.value = 0;
                              createTeamController.CSKPCount.value = 0;
                              createTeamController.CreditLeftCount.value = 100;
                              for(PlayerDetailModel player in createTeamController.wkList)
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
                              for(PlayerDetailModel player in createTeamController.batList)
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
                              for(PlayerDetailModel player in createTeamController.arList)
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
                              for(PlayerDetailModel player in createTeamController.bowlList)
                              {
                                if(player.selected!)
                                {
                                  createTeamController.PlayerCount.value++;
                                  createTeamController.BOWLPCount.value++;
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

                              print("=====${createTeamController.count['BOWL']} playerrrrr ${createTeamController.PlayerCount.value}");
                            }
                          },
                          child: Row(
                            children: [
                              Container(
                                height: Get.width / 8,
                                width: Get.width / 8,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.grey,width: 1)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(1000),
                                  child: CachedNetworkImage(
                                    fadeInDuration: const Duration(seconds: 0),
                                    fit: BoxFit.fill,
                                    imageUrl:
                                    "${(createTeamController.bowlList[index].imageUrl != null && createTeamController.bowlList[index].imageUrl!.isNotEmpty) ? createTeamController.bowlList[index].imageUrl : "https://st4.depositphotos.com/9998432/23359/v/600/depositphotos_233595744-stock-illustration-person-gray-photo-placeholder-man.jpg"}",
                                    progressIndicatorBuilder: (context, url, downloadProgress) => Container(),
                                    errorWidget: (context, url, error) => const Icon(Icons.error),
                                  ),
                                ),
                                // child: CircleAvatar(
                                //   radius: Get.width / 17,
                                //   backgroundImage: NetworkImage('${(createTeamController.BowlList[index].imageUrl != null && createTeamController.BowlList[index].imageUrl!.isNotEmpty) ? createTeamController.BowlList[index].imageUrl : "https://www.iplt20.com/assets/images/default-headshot.png"}'),
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
                                        "${createTeamController.bowlList[index].firstName} ${createTeamController.bowlList[index].lastName}",
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
                                      "${createTeamController.bowlList[index].teamName}",
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
                                  "${createTeamController.bowlList[index].avgPts}",
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
                                  "${createTeamController.bowlList[index].selBy}",
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
                                    "${createTeamController.bowlList[index].credit}",
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
                                        color: createTeamController.bowlList[index].selected! ? Colors.red : Colors.green
                                    ),
                                    alignment: Alignment.center,
                                    child: Icon(createTeamController.bowlList[index].selected! ? Icons.remove : Icons.add,color: Colors.white,size: Get.width / 20,),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const Divider(thickness: 0.4,color: Colors.grey,),
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
