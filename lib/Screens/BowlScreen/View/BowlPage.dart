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

    createTeamController.BowlList.sort((a, b) {
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
                        text: "Wicket Keepers",
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
            padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Player",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Spacer(),
                Text(
                  "Avg Pts",
                  style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(width: 20,),
                Text(
                  "sel by",
                  style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(width: 20,),
                const Text(
                  "Credit",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: createTeamController.BowlList.length,
                itemBuilder: (context, index) {
                  return Container(
                    color: createTeamController.BowlList[index].selected! ? Color(0xFFFFF3DC) : Colors.white,
                    padding: const EdgeInsets.only(left: 10,right: 10,top: 15),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            // if(createTeamController.count['BOWL']! < 5)
                            // {
                              print("====== ${createTeamController.BowlList[index].selected! ? false : true}");
                              createTeamController.BowlList[index] = PlayerDetailModel(
                                credit: createTeamController.BowlList[index].credit,
                                selBy: createTeamController.BowlList[index].selBy,
                                avgPts: createTeamController.BowlList[index].avgPts,
                                imageUrl: createTeamController.BowlList[index].imageUrl,
                                selected: createTeamController.BowlList[index].selected! ? false : true,
                                teamName: createTeamController.BowlList[index].teamName,
                                name: createTeamController.BowlList[index].name,
                              );
                              createTeamController.PlayerCount.value=0;
                              for(PlayerDetailModel player in createTeamController.WKList)
                              {
                                if(player.selected!)
                                {
                                  createTeamController.PlayerCount.value++;
                                }
                              }
                              for(PlayerDetailModel player in createTeamController.BatList)
                              {
                                if(player.selected!)
                                {
                                  createTeamController.PlayerCount.value++;
                                }
                              }
                              for(PlayerDetailModel player in createTeamController.ARList)
                              {
                                if(player.selected!)
                                {
                                  createTeamController.PlayerCount.value++;
                                }
                              }
                              for(PlayerDetailModel player in createTeamController.BowlList)
                              {
                                if(player.selected!)
                                {
                                  createTeamController.PlayerCount.value++;
                                }
                              }
                            //   createTeamController.count['AR'] = createTeamController.count['AR']! + 1;
                            //   print("=====${createTeamController.count['AR']} playerrrrr ${createTeamController.PlayerCount.value}");
                            // }
                          },
                          child: Row(
                            children: [
                              Container(
                                width: Get.width/2.5,
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Colors.grey,width: 1)
                                      ),
                                      child: CircleAvatar(
                                        radius: 23,
                                        backgroundImage: NetworkImage('${(createTeamController.BowlList[index].imageUrl != null && createTeamController.BowlList[index].imageUrl!.isNotEmpty) ? createTeamController.BowlList[index].imageUrl : "https://www.iplt20.com/assets/images/default-headshot.png"}'),
                                        backgroundColor: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 8,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: Get.width/3.9,
                                          child: Text(
                                            "${createTeamController.BowlList[index].name}",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black,
                                                fontSize: 16
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "${createTeamController.BowlList[index].teamName}",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(width: 60,),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${createTeamController.BowlList[index].avgPts}",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text(
                                      "${createTeamController.BowlList[index].selBy}",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.grey.shade400,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "${createTeamController.BowlList[index].credit}",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Container(
                                          height: 23,
                                          width: 23,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: createTeamController.BowlList[index].selected! ? Colors.red : Colors.green
                                          ),
                                          alignment: Alignment.center,
                                          child: Icon(createTeamController.BowlList[index].selected! ? Icons.remove : Icons.add,color: Colors.white,size: 21,),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
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
