import 'package:cached_network_image/cached_network_image.dart';
import 'package:cricstreak/Screens/CreateTeam/controller/CreateTeamController.dart';
import 'package:cricstreak/Screens/CreateTeam/model/PlayerDetailModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LineUpPage extends StatefulWidget {
  const LineUpPage({Key? key}) : super(key: key);

  @override
  State<LineUpPage> createState() => _LineUpPageState();
}

class _LineUpPageState extends State<LineUpPage> {

  CreateTeamController createTeamController = Get.put(CreateTeamController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFF021852),
          title: Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                  text: "Create team 1\n",
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),
                ),
                TextSpan(
                  text: "2h 49m left",
                  style: TextStyle(color: Colors.grey.shade300,fontWeight: FontWeight.w400,fontSize: 14),
                )
              ]
            )
          ),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.info_outline))
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: Get.width/38),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "Choose your Captain and Vice Captain",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: Get.width/75),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "C gets 2X points, VC gets 1.5X points",
                  style: TextStyle(
                    color: Colors.black87,
                    // fontWeight: FontWeight.w500,
                    fontSize: 12.5
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    top: BorderSide(color: Colors.grey.shade400),
                    bottom: BorderSide(color: Colors.grey.shade400),
                )
              ),
              margin: EdgeInsets.only(top: Get.width/35),
              padding: EdgeInsets.symmetric(horizontal: Get.width/30,vertical: Get.width/35),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: Get.width/60),
                    child: Row(
                      children: [
                        Text(
                          "TYPE".toUpperCase(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(width: 0,),
                        Image.asset("assets/image/down_arrow.png",height: Get.width/40, width: Get.width/40,)
                      ],
                    ),
                  ),
                  SizedBox(width: Get.width/15,),
                  Text(
                    "POINTS".toUpperCase(),
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 13,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "% C BY".toUpperCase(),
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(width: Get.width/20,),
                  Padding(
                    padding: EdgeInsets.only(right: Get.width/25),
                    child: Text(
                      "% VC BY".toUpperCase(),
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Obx(
                      () => ListView.builder(
                        itemCount: createTeamController.FinalTeam.value.WK!.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                  bottom: BorderSide(color: Colors.grey.shade300),
                                )
                            ),
                            padding: EdgeInsets.only(top: Get.width/75,right: Get.width/14),
                            child: Row(
                              children: [
                                Container(
                                  height: Get.width/5,
                                  width: Get.width/4.5,
                                  // color: Colors.red,
                                  child: Stack(
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: createTeamController.FinalTeam.value.WK![index].imageUrl!.isNotEmpty ? CachedNetworkImage(
                                            imageUrl: createTeamController.FinalTeam.value.WK![index].imageUrl!,
                                            errorWidget: (context, url, error) => const Icon(Icons.error,color: Colors.black,),
                                            fadeInDuration: const Duration(seconds: 0),
                                            progressIndicatorBuilder: (context, url, downloadProgress) => Container(),
                                          ) : Image.asset("assets/image/person.png")
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: Get.width/75,left: Get.width/75),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Image.asset("assets/image/info.png",height: Get.width/25,width: Get.width/25,),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: Get.width/75,left: Get.width/75),
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Row(
                                            children: [
                                              Container(
                                                color: createTeamController.FinalTeam.value.WK![index].teamName!.toUpperCase() == "CSK".toUpperCase() ? Colors.black : Colors.white,
                                                padding: EdgeInsets.all(Get.width/150),
                                                child: Text(
                                                  "${createTeamController.FinalTeam.value.WK![index].teamName}".toUpperCase(),
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: createTeamController.FinalTeam.value.WK![index].teamName!.toUpperCase() == "CSK".toUpperCase() ? Colors.white : Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                color: const Color(0xFFFFF3DC),
                                                padding: EdgeInsets.all(Get.width/150),
                                                child: Text(
                                                  "WK".toUpperCase(),
                                                  textAlign: TextAlign.center,
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${createTeamController.FinalTeam.value.WK![index].firstName![0].toUpperCase()} ${createTeamController.FinalTeam.value.WK![index].lastName}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16
                                      ),
                                    ),
                                    SizedBox(height: Get.width/150,),
                                    Text(
                                      "${createTeamController.FinalTeam.value.WK![index].point} pts",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 15
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        createTeamController.CVCSelected.value = 0;
                                        for(int i=0; i<createTeamController.FinalTeam.value.WK!.length; i++)
                                        {
                                          if(index == i)
                                          {
                                            createTeamController.FinalTeam.value.WK![i] = PlayerDetailModel(
                                              firstName: createTeamController.FinalTeam.value.WK![i].firstName,
                                              lastName: createTeamController.FinalTeam.value.WK![i].lastName,
                                              imageUrl: createTeamController.FinalTeam.value.WK![i].imageUrl,
                                              credit: createTeamController.FinalTeam.value.WK![i].credit,
                                              color: createTeamController.FinalTeam.value.WK![i].color,
                                              avgPts: createTeamController.FinalTeam.value.WK![i].avgPts,
                                              selBy: createTeamController.FinalTeam.value.WK![i].selBy,
                                              teamName: createTeamController.FinalTeam.value.WK![i].teamName,
                                              selected: createTeamController.FinalTeam.value.WK![i].selected,
                                              point: createTeamController.FinalTeam.value.WK![i].point,
                                              captain: createTeamController.FinalTeam.value.WK![i].captain! ? false : true,
                                              capSelby: createTeamController.FinalTeam.value.WK![i].capSelby,
                                              vicecaptain: false,
                                              vicecapSelby: createTeamController.FinalTeam.value.WK![i].vicecapSelby,
                                            );
                                            if(createTeamController.FinalTeam.value.WK![i].captain!)
                                              {
                                                createTeamController.CVCSelected.value++;
                                              }
                                          }
                                          else
                                          {
                                            createTeamController.FinalTeam.value.WK![i] = PlayerDetailModel(
                                              firstName: createTeamController.FinalTeam.value.WK![i].firstName,
                                              lastName: createTeamController.FinalTeam.value.WK![i].lastName,
                                              imageUrl: createTeamController.FinalTeam.value.WK![i].imageUrl,
                                              credit: createTeamController.FinalTeam.value.WK![i].credit,
                                              color: createTeamController.FinalTeam.value.WK![i].color,
                                              avgPts: createTeamController.FinalTeam.value.WK![i].avgPts,
                                              selBy: createTeamController.FinalTeam.value.WK![i].selBy,
                                              teamName: createTeamController.FinalTeam.value.WK![i].teamName,
                                              selected: createTeamController.FinalTeam.value.WK![i].selected,
                                              point: createTeamController.FinalTeam.value.WK![i].point,
                                              captain: false,
                                              capSelby: createTeamController.FinalTeam.value.WK![i].capSelby,
                                              vicecaptain: createTeamController.FinalTeam.value.WK![i].vicecaptain,
                                              vicecapSelby: createTeamController.FinalTeam.value.WK![i].vicecapSelby,
                                            );
                                          }
                                          // createTeamController.FinalTeam.value.WK![i] = createTeamController.FinalTeam.value.WK![i];
                                        }
                                        for(int i=0; i<createTeamController.FinalTeam.value.Bat!.length; i++)
                                        {
                                          createTeamController.FinalTeam.value.Bat![i] = PlayerDetailModel(
                                            firstName: createTeamController.FinalTeam.value.Bat![i].firstName,
                                            lastName: createTeamController.FinalTeam.value.Bat![i].lastName,
                                            imageUrl: createTeamController.FinalTeam.value.Bat![i].imageUrl,
                                            credit: createTeamController.FinalTeam.value.Bat![i].credit,
                                            color: createTeamController.FinalTeam.value.Bat![i].color,
                                            avgPts: createTeamController.FinalTeam.value.Bat![i].avgPts,
                                            selBy: createTeamController.FinalTeam.value.Bat![i].selBy,
                                            teamName: createTeamController.FinalTeam.value.Bat![i].teamName,
                                            selected: createTeamController.FinalTeam.value.Bat![i].selected,
                                            point: createTeamController.FinalTeam.value.Bat![i].point,
                                            captain: false,
                                            capSelby: createTeamController.FinalTeam.value.Bat![i].capSelby,
                                            vicecaptain: createTeamController.FinalTeam.value.Bat![i].vicecaptain,
                                            vicecapSelby: createTeamController.FinalTeam.value.Bat![i].vicecapSelby,
                                          );
                                          print("======= checkkk battt ${createTeamController.FinalTeam.value.Bat![i].vicecaptain!}");
                                          if(createTeamController.FinalTeam.value.Bat![i].vicecaptain!)
                                          {
                                            createTeamController.CVCSelected.value++;
                                          }
                                          // createTeamController.FinalTeam.value.Bat![i] = createTeamController.FinalTeam.value.Bat![i];
                                        }
                                        for(int i=0; i<createTeamController.FinalTeam.value.AR!.length; i++)
                                        {
                                          createTeamController.FinalTeam.value.AR![i] = PlayerDetailModel(
                                            firstName: createTeamController.FinalTeam.value.AR![i].firstName,
                                            lastName: createTeamController.FinalTeam.value.AR![i].lastName,
                                            imageUrl: createTeamController.FinalTeam.value.AR![i].imageUrl,
                                            credit: createTeamController.FinalTeam.value.AR![i].credit,
                                            color: createTeamController.FinalTeam.value.AR![i].color,
                                            avgPts: createTeamController.FinalTeam.value.AR![i].avgPts,
                                            selBy: createTeamController.FinalTeam.value.AR![i].selBy,
                                            teamName: createTeamController.FinalTeam.value.AR![i].teamName,
                                            selected: createTeamController.FinalTeam.value.AR![i].selected,
                                            point: createTeamController.FinalTeam.value.AR![i].point,
                                            captain: false,
                                            capSelby: createTeamController.FinalTeam.value.AR![i].capSelby,
                                            vicecaptain: createTeamController.FinalTeam.value.AR![i].vicecaptain,
                                            vicecapSelby: createTeamController.FinalTeam.value.AR![i].vicecapSelby,
                                          );
                                          print("======= checkkk arrrr ${createTeamController.FinalTeam.value.AR![i].vicecaptain!}");
                                          if(createTeamController.FinalTeam.value.AR![i].vicecaptain!)
                                          {
                                            createTeamController.CVCSelected.value++;
                                          }
                                          // createTeamController.FinalTeam.value.AR![i] = createTeamController.FinalTeam.value.AR![i];
                                        }
                                        for(int i=0; i<createTeamController.FinalTeam.value.Bowl!.length; i++)
                                        {
                                          createTeamController.FinalTeam.value.Bowl![i] = PlayerDetailModel(
                                            firstName: createTeamController.FinalTeam.value.Bowl![i].firstName,
                                            lastName: createTeamController.FinalTeam.value.Bowl![i].lastName,
                                            imageUrl: createTeamController.FinalTeam.value.Bowl![i].imageUrl,
                                            credit: createTeamController.FinalTeam.value.Bowl![i].credit,
                                            color: createTeamController.FinalTeam.value.Bowl![i].color,
                                            avgPts: createTeamController.FinalTeam.value.Bowl![i].avgPts,
                                            selBy: createTeamController.FinalTeam.value.Bowl![i].selBy,
                                            teamName: createTeamController.FinalTeam.value.Bowl![i].teamName,
                                            selected: createTeamController.FinalTeam.value.Bowl![i].selected,
                                            point: createTeamController.FinalTeam.value.Bowl![i].point,
                                            captain: false,
                                            capSelby: createTeamController.FinalTeam.value.Bowl![i].capSelby,
                                            vicecaptain: createTeamController.FinalTeam.value.Bowl![i].vicecaptain,
                                            vicecapSelby: createTeamController.FinalTeam.value.Bowl![i].vicecapSelby,
                                          );
                                          print("======= checkkk bowllll ${createTeamController.FinalTeam.value.Bowl![i].captain!}");
                                          if(createTeamController.FinalTeam.value.Bowl![i].vicecaptain!)
                                          {
                                            createTeamController.CVCSelected.value++;
                                          }
                                          // createTeamController.FinalTeam.value.Bowl![i] = createTeamController.FinalTeam.value.Bowl![i];
                                        }
                                        createTeamController.FinalTeam.value = createTeamController.FinalTeam.value;
                                        print("=====ccccc ${createTeamController.CVCSelected}");
                                      },
                                      child: Container(
                                        height: Get.width/10,
                                        width: Get.width/10,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: createTeamController.FinalTeam.value.WK![index].captain! ? const Color(0xFF021852) : Colors.white,
                                            border: Border.all(color: Colors.grey.shade400)
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          createTeamController.FinalTeam.value.WK![index].captain! ? "2X".toUpperCase() : "C".toUpperCase(),
                                          style: TextStyle(
                                              color: createTeamController.FinalTeam.value.WK![index].captain! ? Colors.white : Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: Get.width/50),
                                      child: Text(
                                        "${createTeamController.FinalTeam.value.WK![index].capSelby}%".toUpperCase(),
                                        style: const TextStyle(
                                          color: Colors.black54,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: Get.width/16,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        createTeamController.CVCSelected.value = 0;
                                        for(int i=0; i<createTeamController.FinalTeam.value.WK!.length; i++)
                                        {
                                          if(index == i)
                                          {
                                            createTeamController.FinalTeam.value.WK![i] = PlayerDetailModel(
                                              firstName: createTeamController.FinalTeam.value.WK![i].firstName,
                                              lastName: createTeamController.FinalTeam.value.WK![i].lastName,
                                              imageUrl: createTeamController.FinalTeam.value.WK![i].imageUrl,
                                              credit: createTeamController.FinalTeam.value.WK![i].credit,
                                              color: createTeamController.FinalTeam.value.WK![i].color,
                                              avgPts: createTeamController.FinalTeam.value.WK![i].avgPts,
                                              selBy: createTeamController.FinalTeam.value.WK![i].selBy,
                                              teamName: createTeamController.FinalTeam.value.WK![i].teamName,
                                              selected: createTeamController.FinalTeam.value.WK![i].selected,
                                              point: createTeamController.FinalTeam.value.WK![i].point,
                                              captain: false,
                                              capSelby: createTeamController.FinalTeam.value.WK![i].capSelby,
                                              vicecaptain: createTeamController.FinalTeam.value.WK![i].vicecaptain! ? false : true,
                                              vicecapSelby: createTeamController.FinalTeam.value.WK![i].vicecapSelby,
                                            );
                                            if(createTeamController.FinalTeam.value.WK![i].vicecaptain!)
                                            {
                                              createTeamController.CVCSelected.value++;
                                            }
                                          }
                                          else
                                          {
                                            createTeamController.FinalTeam.value.WK![i] = PlayerDetailModel(
                                              firstName: createTeamController.FinalTeam.value.WK![i].firstName,
                                              lastName: createTeamController.FinalTeam.value.WK![i].lastName,
                                              imageUrl: createTeamController.FinalTeam.value.WK![i].imageUrl,
                                              credit: createTeamController.FinalTeam.value.WK![i].credit,
                                              color: createTeamController.FinalTeam.value.WK![i].color,
                                              avgPts: createTeamController.FinalTeam.value.WK![i].avgPts,
                                              selBy: createTeamController.FinalTeam.value.WK![i].selBy,
                                              teamName: createTeamController.FinalTeam.value.WK![i].teamName,
                                              selected: createTeamController.FinalTeam.value.WK![i].selected,
                                              point: createTeamController.FinalTeam.value.WK![i].point,
                                              captain: createTeamController.FinalTeam.value.WK![i].captain,
                                              capSelby: createTeamController.FinalTeam.value.WK![i].capSelby,
                                              vicecaptain: false,
                                              vicecapSelby: createTeamController.FinalTeam.value.WK![i].vicecapSelby,
                                            );
                                          }
                                        }
                                        for(int i=0; i<createTeamController.FinalTeam.value.Bat!.length; i++)
                                        {
                                          createTeamController.FinalTeam.value.Bat![i] = PlayerDetailModel(
                                            firstName: createTeamController.FinalTeam.value.Bat![i].firstName,
                                            lastName: createTeamController.FinalTeam.value.Bat![i].lastName,
                                            imageUrl: createTeamController.FinalTeam.value.Bat![i].imageUrl,
                                            credit: createTeamController.FinalTeam.value.Bat![i].credit,
                                            color: createTeamController.FinalTeam.value.Bat![i].color,
                                            avgPts: createTeamController.FinalTeam.value.Bat![i].avgPts,
                                            selBy: createTeamController.FinalTeam.value.Bat![i].selBy,
                                            teamName: createTeamController.FinalTeam.value.Bat![i].teamName,
                                            selected: createTeamController.FinalTeam.value.Bat![i].selected,
                                            point: createTeamController.FinalTeam.value.Bat![i].point,
                                            captain: createTeamController.FinalTeam.value.Bat![i].captain,
                                            capSelby: createTeamController.FinalTeam.value.Bat![i].capSelby,
                                            vicecaptain: false,
                                            vicecapSelby: createTeamController.FinalTeam.value.Bat![i].vicecapSelby,
                                          );
                                          print("======= checkkk ${createTeamController.FinalTeam.value.Bat![i].captain!}");
                                          if(createTeamController.FinalTeam.value.Bat![i].captain!)
                                          {
                                            createTeamController.CVCSelected.value++;
                                          }
                                          // createTeamController.FinalTeam.value.Bat![i] = createTeamController.FinalTeam.value.Bat![i];
                                        }
                                        for(int i=0; i<createTeamController.FinalTeam.value.AR!.length; i++)
                                        {
                                          createTeamController.FinalTeam.value.AR![i] = PlayerDetailModel(
                                            firstName: createTeamController.FinalTeam.value.AR![i].firstName,
                                            lastName: createTeamController.FinalTeam.value.AR![i].lastName,
                                            imageUrl: createTeamController.FinalTeam.value.AR![i].imageUrl,
                                            credit: createTeamController.FinalTeam.value.AR![i].credit,
                                            color: createTeamController.FinalTeam.value.AR![i].color,
                                            avgPts: createTeamController.FinalTeam.value.AR![i].avgPts,
                                            selBy: createTeamController.FinalTeam.value.AR![i].selBy,
                                            teamName: createTeamController.FinalTeam.value.AR![i].teamName,
                                            selected: createTeamController.FinalTeam.value.AR![i].selected,
                                            point: createTeamController.FinalTeam.value.AR![i].point,
                                            captain: createTeamController.FinalTeam.value.AR![i].captain,
                                            capSelby: createTeamController.FinalTeam.value.AR![i].capSelby,
                                            vicecaptain: false,
                                            vicecapSelby: createTeamController.FinalTeam.value.AR![i].vicecapSelby,
                                          );
                                          if(createTeamController.FinalTeam.value.AR![i].captain!)
                                          {
                                            createTeamController.CVCSelected.value++;
                                          }
                                          // createTeamController.FinalTeam.value.AR![i] = createTeamController.FinalTeam.value.AR![i];
                                        }
                                        for(int i=0; i<createTeamController.FinalTeam.value.Bowl!.length; i++)
                                        {
                                          createTeamController.FinalTeam.value.Bowl![i] = PlayerDetailModel(
                                            firstName: createTeamController.FinalTeam.value.Bowl![i].firstName,
                                            lastName: createTeamController.FinalTeam.value.Bowl![i].lastName,
                                            imageUrl: createTeamController.FinalTeam.value.Bowl![i].imageUrl,
                                            credit: createTeamController.FinalTeam.value.Bowl![i].credit,
                                            color: createTeamController.FinalTeam.value.Bowl![i].color,
                                            avgPts: createTeamController.FinalTeam.value.Bowl![i].avgPts,
                                            selBy: createTeamController.FinalTeam.value.Bowl![i].selBy,
                                            teamName: createTeamController.FinalTeam.value.Bowl![i].teamName,
                                            selected: createTeamController.FinalTeam.value.Bowl![i].selected,
                                            point: createTeamController.FinalTeam.value.Bowl![i].point,
                                            captain: createTeamController.FinalTeam.value.Bowl![i].captain,
                                            capSelby: createTeamController.FinalTeam.value.Bowl![i].capSelby,
                                            vicecaptain: false,
                                            vicecapSelby: createTeamController.FinalTeam.value.Bowl![i].vicecapSelby,
                                          );
                                          if(createTeamController.FinalTeam.value.Bowl![i].captain!)
                                          {
                                            createTeamController.CVCSelected.value++;
                                          }
                                          // createTeamController.FinalTeam.value.Bowl![i] = createTeamController.FinalTeam.value.Bowl![i];
                                        }
                                        createTeamController.FinalTeam.value = createTeamController.FinalTeam.value;
                                        print("======= cvcccccc ${createTeamController.CVCSelected.value}");
                                      },
                                      child: Container(
                                        height: Get.width/10,
                                        width: Get.width/10,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: createTeamController.FinalTeam.value.WK![index].vicecaptain! ? const Color(0xFF021852) : Colors.white,
                                            border: Border.all(color: Colors.grey.shade400)
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          createTeamController.FinalTeam.value.WK![index].vicecaptain! ? "1.5X".toUpperCase() : "VC".toUpperCase(),
                                          style: TextStyle(
                                              color: createTeamController.FinalTeam.value.WK![index].vicecaptain! ? Colors.white : Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: Get.width/50),
                                      child: Text(
                                        "${createTeamController.FinalTeam.value.WK![index].vicecapSelby}%".toUpperCase(),
                                        style: const TextStyle(
                                          color: Colors.black54,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: Get.width/30,),
                    Obx(
                      () => ListView.builder(
                        itemCount: createTeamController.FinalTeam.value.Bat!.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                  bottom: BorderSide(color: Colors.grey.shade300),
                                )
                            ),
                            padding: EdgeInsets.only(top: Get.width/75,right: Get.width/14),
                            child: Row(
                              children: [
                                Container(
                                  height: Get.width/5,
                                  width: Get.width/4.5,
                                  // color: Colors.red,
                                  child: Stack(
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: createTeamController.FinalTeam.value.Bat![index].imageUrl!.isNotEmpty ? CachedNetworkImage(
                                            imageUrl: createTeamController.FinalTeam.value.Bat![index].imageUrl!,
                                            errorWidget: (context, url, error) => const Icon(Icons.error,color: Colors.black,),
                                            fadeInDuration: const Duration(seconds: 0),
                                            progressIndicatorBuilder: (context, url, downloadProgress) => Container(),
                                          ) : Image.asset("assets/image/person.png")
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: Get.width/75,left: Get.width/75),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Image.asset("assets/image/info.png",height: Get.width/25,width: Get.width/25,),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: Get.width/75,left: Get.width/75),
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Row(
                                            children: [
                                              Container(
                                                color: createTeamController.FinalTeam.value.Bat![index].teamName!.toUpperCase() == "CSK".toUpperCase() ? Colors.black : Colors.white,
                                                padding: EdgeInsets.all(Get.width/150),
                                                child: Text(
                                                  "${createTeamController.FinalTeam.value.Bat![index].teamName}".toUpperCase(),
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: createTeamController.FinalTeam.value.Bat![index].teamName!.toUpperCase() == "CSK".toUpperCase() ? Colors.white : Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                color: const Color(0xFFFFF3DC),
                                                padding: EdgeInsets.all(Get.width/150),
                                                child: Text(
                                                  "BAT".toUpperCase(),
                                                  textAlign: TextAlign.center,
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${createTeamController.FinalTeam.value.Bat![index].firstName![0].toUpperCase()} ${createTeamController.FinalTeam.value.Bat![index].lastName}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16
                                      ),
                                    ),
                                    SizedBox(height: Get.width/150,),
                                    Text(
                                      "${createTeamController.FinalTeam.value.Bat![index].point} pts",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 15
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        createTeamController.CVCSelected.value = 0;
                                        for(int i=0; i<createTeamController.FinalTeam.value.Bat!.length; i++)
                                        {
                                          if(index == i)
                                          {
                                            createTeamController.FinalTeam.value.Bat![i] = PlayerDetailModel(
                                              firstName: createTeamController.FinalTeam.value.Bat![i].firstName,
                                              lastName: createTeamController.FinalTeam.value.Bat![i].lastName,
                                              imageUrl: createTeamController.FinalTeam.value.Bat![i].imageUrl,
                                              credit: createTeamController.FinalTeam.value.Bat![i].credit,
                                              color: createTeamController.FinalTeam.value.Bat![i].color,
                                              avgPts: createTeamController.FinalTeam.value.Bat![i].avgPts,
                                              selBy: createTeamController.FinalTeam.value.Bat![i].selBy,
                                              teamName: createTeamController.FinalTeam.value.Bat![i].teamName,
                                              selected: createTeamController.FinalTeam.value.Bat![i].selected,
                                              point: createTeamController.FinalTeam.value.Bat![i].point,
                                              captain: createTeamController.FinalTeam.value.Bat![i].captain! ? false : true,
                                              capSelby: createTeamController.FinalTeam.value.Bat![i].capSelby,
                                              vicecaptain: false,
                                              vicecapSelby: createTeamController.FinalTeam.value.Bat![i].vicecapSelby,
                                            );
                                            if(createTeamController.FinalTeam.value.Bat![i].captain!)
                                            {
                                              createTeamController.CVCSelected.value++;
                                            }
                                          }
                                          else
                                          {
                                            createTeamController.FinalTeam.value.Bat![i] = PlayerDetailModel(
                                              firstName: createTeamController.FinalTeam.value.Bat![i].firstName,
                                              lastName: createTeamController.FinalTeam.value.Bat![i].lastName,
                                              imageUrl: createTeamController.FinalTeam.value.Bat![i].imageUrl,
                                              credit: createTeamController.FinalTeam.value.Bat![i].credit,
                                              color: createTeamController.FinalTeam.value.Bat![i].color,
                                              avgPts: createTeamController.FinalTeam.value.Bat![i].avgPts,
                                              selBy: createTeamController.FinalTeam.value.Bat![i].selBy,
                                              teamName: createTeamController.FinalTeam.value.Bat![i].teamName,
                                              selected: createTeamController.FinalTeam.value.Bat![i].selected,
                                              point: createTeamController.FinalTeam.value.Bat![i].point,
                                              captain: false,
                                              capSelby: createTeamController.FinalTeam.value.Bat![i].capSelby,
                                              vicecaptain: createTeamController.FinalTeam.value.Bat![i].vicecaptain,
                                              vicecapSelby: createTeamController.FinalTeam.value.Bat![i].vicecapSelby,
                                            );
                                          }
                                        }
                                        for(int i=0; i<createTeamController.FinalTeam.value.WK!.length; i++)
                                        {
                                          createTeamController.FinalTeam.value.WK![i] = PlayerDetailModel(
                                            firstName: createTeamController.FinalTeam.value.WK![i].firstName,
                                            lastName: createTeamController.FinalTeam.value.WK![i].lastName,
                                            imageUrl: createTeamController.FinalTeam.value.WK![i].imageUrl,
                                            credit: createTeamController.FinalTeam.value.WK![i].credit,
                                            color: createTeamController.FinalTeam.value.WK![i].color,
                                            avgPts: createTeamController.FinalTeam.value.WK![i].avgPts,
                                            selBy: createTeamController.FinalTeam.value.WK![i].selBy,
                                            teamName: createTeamController.FinalTeam.value.WK![i].teamName,
                                            selected: createTeamController.FinalTeam.value.WK![i].selected,
                                            point: createTeamController.FinalTeam.value.WK![i].point,
                                            captain: false,
                                            capSelby: createTeamController.FinalTeam.value.WK![i].capSelby,
                                            vicecaptain: createTeamController.FinalTeam.value.WK![i].vicecaptain,
                                            vicecapSelby: createTeamController.FinalTeam.value.WK![i].vicecapSelby,
                                          );
                                          print("======= checkkk wkkkk ${createTeamController.FinalTeam.value.WK![i].vicecaptain!}");
                                          if(createTeamController.FinalTeam.value.WK![i].vicecaptain!)
                                          {
                                            createTeamController.CVCSelected.value++;
                                          }
                                          // createTeamController.FinalTeam.value.WK![i] = createTeamController.FinalTeam.value.WK![i];
                                        }
                                        for(int i=0; i<createTeamController.FinalTeam.value.AR!.length; i++)
                                        {
                                          createTeamController.FinalTeam.value.AR![i] = PlayerDetailModel(
                                            firstName: createTeamController.FinalTeam.value.AR![i].firstName,
                                            lastName: createTeamController.FinalTeam.value.AR![i].lastName,
                                            imageUrl: createTeamController.FinalTeam.value.AR![i].imageUrl,
                                            credit: createTeamController.FinalTeam.value.AR![i].credit,
                                            color: createTeamController.FinalTeam.value.AR![i].color,
                                            avgPts: createTeamController.FinalTeam.value.AR![i].avgPts,
                                            selBy: createTeamController.FinalTeam.value.AR![i].selBy,
                                            teamName: createTeamController.FinalTeam.value.AR![i].teamName,
                                            selected: createTeamController.FinalTeam.value.AR![i].selected,
                                            point: createTeamController.FinalTeam.value.AR![i].point,
                                            captain: false,
                                            capSelby: createTeamController.FinalTeam.value.AR![i].capSelby,
                                            vicecaptain: createTeamController.FinalTeam.value.AR![i].vicecaptain,
                                            vicecapSelby: createTeamController.FinalTeam.value.AR![i].vicecapSelby,
                                          );
                                          print("======= checkkk arrrr ${createTeamController.FinalTeam.value.AR![i].vicecaptain!}");
                                          if(createTeamController.FinalTeam.value.AR![i].vicecaptain!)
                                          {
                                            createTeamController.CVCSelected.value++;
                                          }
                                          // createTeamController.FinalTeam.value.AR![i] = createTeamController.FinalTeam.value.AR![i];
                                        }
                                        for(int i=0; i<createTeamController.FinalTeam.value.Bowl!.length; i++)
                                        {
                                          createTeamController.FinalTeam.value.Bowl![i] = PlayerDetailModel(
                                            firstName: createTeamController.FinalTeam.value.Bowl![i].firstName,
                                            lastName: createTeamController.FinalTeam.value.Bowl![i].lastName,
                                            imageUrl: createTeamController.FinalTeam.value.Bowl![i].imageUrl,
                                            credit: createTeamController.FinalTeam.value.Bowl![i].credit,
                                            color: createTeamController.FinalTeam.value.Bowl![i].color,
                                            avgPts: createTeamController.FinalTeam.value.Bowl![i].avgPts,
                                            selBy: createTeamController.FinalTeam.value.Bowl![i].selBy,
                                            teamName: createTeamController.FinalTeam.value.Bowl![i].teamName,
                                            selected: createTeamController.FinalTeam.value.Bowl![i].selected,
                                            point: createTeamController.FinalTeam.value.Bowl![i].point,
                                            captain: false,
                                            capSelby: createTeamController.FinalTeam.value.Bowl![i].capSelby,
                                            vicecaptain: createTeamController.FinalTeam.value.Bowl![i].vicecaptain,
                                            vicecapSelby: createTeamController.FinalTeam.value.Bowl![i].vicecapSelby,
                                          );
                                          print("======= checkkk bowlll ${createTeamController.FinalTeam.value.Bowl![i].vicecaptain!}");
                                          if(createTeamController.FinalTeam.value.Bowl![i].vicecaptain!)
                                          {
                                            createTeamController.CVCSelected.value++;
                                          }
                                          // createTeamController.FinalTeam.value.Bowl![i] = createTeamController.FinalTeam.value.Bowl![i];
                                        }
                                        createTeamController.FinalTeam.value = createTeamController.FinalTeam.value;

                                      },
                                      child: Container(
                                        height: Get.width/10,
                                        width: Get.width/10,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: createTeamController.FinalTeam.value.Bat![index].captain! ? const Color(0xFF021852) : Colors.white,
                                            border: Border.all(color: Colors.grey.shade400)
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          createTeamController.FinalTeam.value.Bat![index].captain! ? "2X".toUpperCase() : "C".toUpperCase(),
                                          style: TextStyle(
                                              color: createTeamController.FinalTeam.value.Bat![index].captain! ? Colors.white : Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: Get.width/50),
                                      child: Text(
                                        "${createTeamController.FinalTeam.value.Bat![index].capSelby}%".toUpperCase(),
                                        style: const TextStyle(
                                          color: Colors.black54,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: Get.width/16,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        createTeamController.CVCSelected.value = 0;
                                        for(int i=0; i<createTeamController.FinalTeam.value.Bat!.length; i++)
                                        {
                                          if(index == i)
                                          {
                                            createTeamController.FinalTeam.value.Bat![i] = PlayerDetailModel(
                                              firstName: createTeamController.FinalTeam.value.Bat![i].firstName,
                                              lastName: createTeamController.FinalTeam.value.Bat![i].lastName,
                                              imageUrl: createTeamController.FinalTeam.value.Bat![i].imageUrl,
                                              credit: createTeamController.FinalTeam.value.Bat![i].credit,
                                              color: createTeamController.FinalTeam.value.Bat![i].color,
                                              avgPts: createTeamController.FinalTeam.value.Bat![i].avgPts,
                                              selBy: createTeamController.FinalTeam.value.Bat![i].selBy,
                                              teamName: createTeamController.FinalTeam.value.Bat![i].teamName,
                                              selected: createTeamController.FinalTeam.value.Bat![i].selected,
                                              point: createTeamController.FinalTeam.value.Bat![i].point,
                                              captain: false,
                                              capSelby: createTeamController.FinalTeam.value.Bat![i].capSelby,
                                              vicecaptain: createTeamController.FinalTeam.value.Bat![i].vicecaptain! ? false : true,
                                              vicecapSelby: createTeamController.FinalTeam.value.Bat![i].vicecapSelby,
                                            );
                                            if(createTeamController.FinalTeam.value.Bat![i].vicecaptain!)
                                            {
                                              createTeamController.CVCSelected.value++;
                                            }
                                          }
                                          else
                                          {
                                            createTeamController.FinalTeam.value.Bat![i] = PlayerDetailModel(
                                              firstName: createTeamController.FinalTeam.value.Bat![i].firstName,
                                              lastName: createTeamController.FinalTeam.value.Bat![i].lastName,
                                              imageUrl: createTeamController.FinalTeam.value.Bat![i].imageUrl,
                                              credit: createTeamController.FinalTeam.value.Bat![i].credit,
                                              color: createTeamController.FinalTeam.value.Bat![i].color,
                                              avgPts: createTeamController.FinalTeam.value.Bat![i].avgPts,
                                              selBy: createTeamController.FinalTeam.value.Bat![i].selBy,
                                              teamName: createTeamController.FinalTeam.value.Bat![i].teamName,
                                              selected: createTeamController.FinalTeam.value.Bat![i].selected,
                                              point: createTeamController.FinalTeam.value.Bat![i].point,
                                              captain: createTeamController.FinalTeam.value.Bat![i].captain,
                                              capSelby: createTeamController.FinalTeam.value.Bat![i].capSelby,
                                              vicecaptain: false,
                                              vicecapSelby: createTeamController.FinalTeam.value.Bat![i].vicecapSelby,
                                            );
                                          }
                                        }
                                        for(int i=0; i<createTeamController.FinalTeam.value.WK!.length; i++)
                                        {
                                          createTeamController.FinalTeam.value.WK![i] = PlayerDetailModel(
                                            firstName: createTeamController.FinalTeam.value.WK![i].firstName,
                                            lastName: createTeamController.FinalTeam.value.WK![i].lastName,
                                            imageUrl: createTeamController.FinalTeam.value.WK![i].imageUrl,
                                            credit: createTeamController.FinalTeam.value.WK![i].credit,
                                            color: createTeamController.FinalTeam.value.WK![i].color,
                                            avgPts: createTeamController.FinalTeam.value.WK![i].avgPts,
                                            selBy: createTeamController.FinalTeam.value.WK![i].selBy,
                                            teamName: createTeamController.FinalTeam.value.WK![i].teamName,
                                            selected: createTeamController.FinalTeam.value.WK![i].selected,
                                            point: createTeamController.FinalTeam.value.WK![i].point,
                                            captain: createTeamController.FinalTeam.value.WK![i].captain,
                                            capSelby: createTeamController.FinalTeam.value.WK![i].capSelby,
                                            vicecaptain: false,
                                            vicecapSelby: createTeamController.FinalTeam.value.WK![i].vicecapSelby,
                                          );
                                          print("======= checkkk wkkk ${createTeamController.FinalTeam.value.WK![i].captain!}");
                                          if(createTeamController.FinalTeam.value.WK![i].captain!)
                                          {
                                            createTeamController.CVCSelected.value++;
                                          }
                                          // createTeamController.FinalTeam.value.WK![i] = createTeamController.FinalTeam.value.WK![i];
                                        }
                                        for(int i=0; i<createTeamController.FinalTeam.value.AR!.length; i++)
                                        {
                                          createTeamController.FinalTeam.value.AR![i] = PlayerDetailModel(
                                            firstName: createTeamController.FinalTeam.value.AR![i].firstName,
                                            lastName: createTeamController.FinalTeam.value.AR![i].lastName,
                                            imageUrl: createTeamController.FinalTeam.value.AR![i].imageUrl,
                                            credit: createTeamController.FinalTeam.value.AR![i].credit,
                                            color: createTeamController.FinalTeam.value.AR![i].color,
                                            avgPts: createTeamController.FinalTeam.value.AR![i].avgPts,
                                            selBy: createTeamController.FinalTeam.value.AR![i].selBy,
                                            teamName: createTeamController.FinalTeam.value.AR![i].teamName,
                                            selected: createTeamController.FinalTeam.value.AR![i].selected,
                                            point: createTeamController.FinalTeam.value.AR![i].point,
                                            captain: createTeamController.FinalTeam.value.AR![i].captain,
                                            capSelby: createTeamController.FinalTeam.value.AR![i].capSelby,
                                            vicecaptain: false,
                                            vicecapSelby: createTeamController.FinalTeam.value.AR![i].vicecapSelby,
                                          );
                                          print("======= checkkk arrrrrr ${createTeamController.FinalTeam.value.AR![i].captain!}");
                                          if(createTeamController.FinalTeam.value.AR![i].captain!)
                                          {
                                            createTeamController.CVCSelected.value++;
                                          }
                                          // createTeamController.FinalTeam.value.AR![i] = createTeamController.FinalTeam.value.AR![i];
                                        }
                                        for(int i=0; i<createTeamController.FinalTeam.value.Bowl!.length; i++)
                                        {
                                          createTeamController.FinalTeam.value.Bowl![i] = PlayerDetailModel(
                                            firstName: createTeamController.FinalTeam.value.Bowl![i].firstName,
                                            lastName: createTeamController.FinalTeam.value.Bowl![i].lastName,
                                            imageUrl: createTeamController.FinalTeam.value.Bowl![i].imageUrl,
                                            credit: createTeamController.FinalTeam.value.Bowl![i].credit,
                                            color: createTeamController.FinalTeam.value.Bowl![i].color,
                                            avgPts: createTeamController.FinalTeam.value.Bowl![i].avgPts,
                                            selBy: createTeamController.FinalTeam.value.Bowl![i].selBy,
                                            teamName: createTeamController.FinalTeam.value.Bowl![i].teamName,
                                            selected: createTeamController.FinalTeam.value.Bowl![i].selected,
                                            point: createTeamController.FinalTeam.value.Bowl![i].point,
                                            captain: createTeamController.FinalTeam.value.Bowl![i].captain,
                                            capSelby: createTeamController.FinalTeam.value.Bowl![i].capSelby,
                                            vicecaptain: false,
                                            vicecapSelby: createTeamController.FinalTeam.value.Bowl![i].vicecapSelby,
                                          );
                                          print("======= checkkk bowlll ${createTeamController.FinalTeam.value.Bowl![i].captain!}");
                                          if(createTeamController.FinalTeam.value.Bowl![i].captain!)
                                          {
                                            createTeamController.CVCSelected.value++;
                                          }
                                          // createTeamController.FinalTeam.value.Bowl![i] = createTeamController.FinalTeam.value.Bowl![i];
                                        }
                                        createTeamController.FinalTeam.value = createTeamController.FinalTeam.value;
                                        print("==== cvcccccccc ${createTeamController.CVCSelected}");
                                      },
                                      child: Container(
                                        height: Get.width/10,
                                        width: Get.width/10,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: createTeamController.FinalTeam.value.Bat![index].vicecaptain! ? const Color(0xFF021852) : Colors.white,
                                            border: Border.all(color: Colors.grey.shade400)
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          createTeamController.FinalTeam.value.Bat![index].vicecaptain! ? "1.5X".toUpperCase() : "VC".toUpperCase(),
                                          style: TextStyle(
                                              color: createTeamController.FinalTeam.value.Bat![index].vicecaptain! ? Colors.white : Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: Get.width/50),
                                      child: Text(
                                        "${createTeamController.FinalTeam.value.Bat![index].vicecapSelby}%".toUpperCase(),
                                        style: const TextStyle(
                                          color: Colors.black54,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: Get.width/30,),
                    Obx(
                      () => ListView.builder(
                        itemCount: createTeamController.FinalTeam.value.AR!.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                  bottom: BorderSide(color: Colors.grey.shade300),
                                )
                            ),
                            padding: EdgeInsets.only(top: Get.width/75,right: Get.width/14),
                            child: Row(
                              children: [
                                Container(
                                  height: Get.width/5,
                                  width: Get.width/4.5,
                                  // color: Colors.red,
                                  child: Stack(
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: createTeamController.FinalTeam.value.AR![index].imageUrl!.isNotEmpty ? CachedNetworkImage(
                                            imageUrl: createTeamController.FinalTeam.value.AR![index].imageUrl!,
                                            errorWidget: (context, url, error) => const Icon(Icons.error,color: Colors.black,),
                                            fadeInDuration: const Duration(seconds: 0),
                                            progressIndicatorBuilder: (context, url, downloadProgress) => Container(),
                                          ) : Image.asset("assets/image/person.png")
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: Get.width/75,left: Get.width/75),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Image.asset("assets/image/info.png",height: Get.width/25,width: Get.width/25,),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: Get.width/75,left: Get.width/75),
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Row(
                                            children: [
                                              Container(
                                                color: createTeamController.FinalTeam.value.AR![index].teamName!.toUpperCase() == "CSK".toUpperCase() ? Colors.black : Colors.white,
                                                padding: EdgeInsets.all(Get.width/150),
                                                child: Text(
                                                  "${createTeamController.FinalTeam.value.AR![index].teamName}".toUpperCase(),
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: createTeamController.FinalTeam.value.AR![index].teamName!.toUpperCase() == "CSK".toUpperCase() ? Colors.white : Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                color: const Color(0xFFFFF3DC),
                                                padding: EdgeInsets.all(Get.width/150),
                                                child: Text(
                                                  "AR".toUpperCase(),
                                                  textAlign: TextAlign.center,
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${createTeamController.FinalTeam.value.AR![index].firstName![0].toUpperCase()} ${createTeamController.FinalTeam.value.AR![index].lastName}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16
                                      ),
                                    ),
                                    SizedBox(height: Get.width/150,),
                                    Text(
                                      "${createTeamController.FinalTeam.value.AR![index].point} pts",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 15
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        createTeamController.CVCSelected.value = 0;
                                        for(int i=0; i<createTeamController.FinalTeam.value.AR!.length; i++)
                                        {
                                          if(index == i)
                                          {
                                            createTeamController.FinalTeam.value.AR![i] = PlayerDetailModel(
                                              firstName: createTeamController.FinalTeam.value.AR![i].firstName,
                                              lastName: createTeamController.FinalTeam.value.AR![i].lastName,
                                              imageUrl: createTeamController.FinalTeam.value.AR![i].imageUrl,
                                              credit: createTeamController.FinalTeam.value.AR![i].credit,
                                              color: createTeamController.FinalTeam.value.AR![i].color,
                                              avgPts: createTeamController.FinalTeam.value.AR![i].avgPts,
                                              selBy: createTeamController.FinalTeam.value.AR![i].selBy,
                                              teamName: createTeamController.FinalTeam.value.AR![i].teamName,
                                              selected: createTeamController.FinalTeam.value.AR![i].selected,
                                              point: createTeamController.FinalTeam.value.AR![i].point,
                                              captain: createTeamController.FinalTeam.value.AR![i].captain! ? false : true,
                                              capSelby: createTeamController.FinalTeam.value.AR![i].capSelby,
                                              vicecaptain: false,
                                              vicecapSelby: createTeamController.FinalTeam.value.AR![i].vicecapSelby,
                                            );
                                            if(createTeamController.FinalTeam.value.AR![i].captain!)
                                            {
                                              createTeamController.CVCSelected.value++;
                                            }
                                          }
                                          else
                                          {
                                            createTeamController.FinalTeam.value.AR![i] = PlayerDetailModel(
                                              firstName: createTeamController.FinalTeam.value.AR![i].firstName,
                                              lastName: createTeamController.FinalTeam.value.AR![i].lastName,
                                              imageUrl: createTeamController.FinalTeam.value.AR![i].imageUrl,
                                              credit: createTeamController.FinalTeam.value.AR![i].credit,
                                              color: createTeamController.FinalTeam.value.AR![i].color,
                                              avgPts: createTeamController.FinalTeam.value.AR![i].avgPts,
                                              selBy: createTeamController.FinalTeam.value.AR![i].selBy,
                                              teamName: createTeamController.FinalTeam.value.AR![i].teamName,
                                              selected: createTeamController.FinalTeam.value.AR![i].selected,
                                              point: createTeamController.FinalTeam.value.AR![i].point,
                                              captain: false,
                                              capSelby: createTeamController.FinalTeam.value.AR![i].capSelby,
                                              vicecaptain: createTeamController.FinalTeam.value.AR![i].vicecaptain,
                                              vicecapSelby: createTeamController.FinalTeam.value.AR![i].vicecapSelby,
                                            );
                                          }
                                        }
                                        for(int i=0; i<createTeamController.FinalTeam.value.WK!.length; i++)
                                        {
                                          createTeamController.FinalTeam.value.WK![i] = PlayerDetailModel(
                                            firstName: createTeamController.FinalTeam.value.WK![i].firstName,
                                            lastName: createTeamController.FinalTeam.value.WK![i].lastName,
                                            imageUrl: createTeamController.FinalTeam.value.WK![i].imageUrl,
                                            credit: createTeamController.FinalTeam.value.WK![i].credit,
                                            color: createTeamController.FinalTeam.value.WK![i].color,
                                            avgPts: createTeamController.FinalTeam.value.WK![i].avgPts,
                                            selBy: createTeamController.FinalTeam.value.WK![i].selBy,
                                            teamName: createTeamController.FinalTeam.value.WK![i].teamName,
                                            selected: createTeamController.FinalTeam.value.WK![i].selected,
                                            point: createTeamController.FinalTeam.value.WK![i].point,
                                            captain: false,
                                            capSelby: createTeamController.FinalTeam.value.WK![i].capSelby,
                                            vicecaptain: createTeamController.FinalTeam.value.WK![i].vicecaptain,
                                            vicecapSelby: createTeamController.FinalTeam.value.WK![i].vicecapSelby,
                                          );
                                          print("======= checkkk wkkkk ${createTeamController.FinalTeam.value.WK![i].vicecaptain!}");
                                          if(createTeamController.FinalTeam.value.WK![i].vicecaptain!)
                                          {
                                            createTeamController.CVCSelected.value++;
                                          }
                                          // createTeamController.FinalTeam.value.WK![i] = createTeamController.FinalTeam.value.WK![i];
                                        }
                                        for(int i=0; i<createTeamController.FinalTeam.value.Bat!.length; i++)
                                        {
                                          createTeamController.FinalTeam.value.Bat![i] = PlayerDetailModel(
                                            firstName: createTeamController.FinalTeam.value.Bat![i].firstName,
                                            lastName: createTeamController.FinalTeam.value.Bat![i].lastName,
                                            imageUrl: createTeamController.FinalTeam.value.Bat![i].imageUrl,
                                            credit: createTeamController.FinalTeam.value.Bat![i].credit,
                                            color: createTeamController.FinalTeam.value.Bat![i].color,
                                            avgPts: createTeamController.FinalTeam.value.Bat![i].avgPts,
                                            selBy: createTeamController.FinalTeam.value.Bat![i].selBy,
                                            teamName: createTeamController.FinalTeam.value.Bat![i].teamName,
                                            selected: createTeamController.FinalTeam.value.Bat![i].selected,
                                            point: createTeamController.FinalTeam.value.Bat![i].point,
                                            captain: false,
                                            capSelby: createTeamController.FinalTeam.value.Bat![i].capSelby,
                                            vicecaptain: createTeamController.FinalTeam.value.Bat![i].vicecaptain,
                                            vicecapSelby: createTeamController.FinalTeam.value.Bat![i].vicecapSelby,
                                          );
                                          print("======= checkkk battt ${createTeamController.FinalTeam.value.Bat![i].vicecaptain!}");
                                          if(createTeamController.FinalTeam.value.Bat![i].vicecaptain!)
                                          {
                                            createTeamController.CVCSelected.value++;
                                          }
                                          // createTeamController.FinalTeam.value.Bat![i] = createTeamController.FinalTeam.value.Bat![i];
                                        }
                                        for(int i=0; i<createTeamController.FinalTeam.value.Bowl!.length; i++)
                                        {
                                          createTeamController.FinalTeam.value.Bowl![i] = PlayerDetailModel(
                                            firstName: createTeamController.FinalTeam.value.Bowl![i].firstName,
                                            lastName: createTeamController.FinalTeam.value.Bowl![i].lastName,
                                            imageUrl: createTeamController.FinalTeam.value.Bowl![i].imageUrl,
                                            credit: createTeamController.FinalTeam.value.Bowl![i].credit,
                                            color: createTeamController.FinalTeam.value.Bowl![i].color,
                                            avgPts: createTeamController.FinalTeam.value.Bowl![i].avgPts,
                                            selBy: createTeamController.FinalTeam.value.Bowl![i].selBy,
                                            teamName: createTeamController.FinalTeam.value.Bowl![i].teamName,
                                            selected: createTeamController.FinalTeam.value.Bowl![i].selected,
                                            point: createTeamController.FinalTeam.value.Bowl![i].point,
                                            captain: false,
                                            capSelby: createTeamController.FinalTeam.value.Bowl![i].capSelby,
                                            vicecaptain: createTeamController.FinalTeam.value.Bowl![i].vicecaptain,
                                            vicecapSelby: createTeamController.FinalTeam.value.Bowl![i].vicecapSelby,
                                          );
                                          print("======= checkkk bowlll ${createTeamController.FinalTeam.value.Bowl![i].vicecaptain!}");
                                          if(createTeamController.FinalTeam.value.Bowl![i].vicecaptain!)
                                          {
                                            createTeamController.CVCSelected.value++;
                                          }
                                          // createTeamController.FinalTeam.value.Bowl![i] = createTeamController.FinalTeam.value.Bowl![i];
                                        }
                                        createTeamController.FinalTeam.value = createTeamController.FinalTeam.value;
                                        print("====== Arrrrrrrrr  ${createTeamController.CVCSelected}");
                                      },
                                      child: Container(
                                        height: Get.width/10,
                                        width: Get.width/10,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: createTeamController.FinalTeam.value.AR![index].captain! ? const Color(0xFF021852) : Colors.white,
                                            border: Border.all(color: Colors.grey.shade400)
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          createTeamController.FinalTeam.value.AR![index].captain! ? "2X".toUpperCase() : "C".toUpperCase(),
                                          style: TextStyle(
                                              color: createTeamController.FinalTeam.value.AR![index].captain! ? Colors.white : Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: Get.width/50),
                                      child: Text(
                                        "${createTeamController.FinalTeam.value.AR![index].capSelby}%".toUpperCase(),
                                        style: const TextStyle(
                                          color: Colors.black54,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: Get.width/16,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        createTeamController.CVCSelected.value = 0;
                                        for(int i=0; i<createTeamController.FinalTeam.value.AR!.length; i++)
                                        {
                                          if(index == i)
                                          {
                                            createTeamController.FinalTeam.value.AR![i] = PlayerDetailModel(
                                              firstName: createTeamController.FinalTeam.value.AR![i].firstName,
                                              lastName: createTeamController.FinalTeam.value.AR![i].lastName,
                                              imageUrl: createTeamController.FinalTeam.value.AR![i].imageUrl,
                                              credit: createTeamController.FinalTeam.value.AR![i].credit,
                                              color: createTeamController.FinalTeam.value.AR![i].color,
                                              avgPts: createTeamController.FinalTeam.value.AR![i].avgPts,
                                              selBy: createTeamController.FinalTeam.value.AR![i].selBy,
                                              teamName: createTeamController.FinalTeam.value.AR![i].teamName,
                                              selected: createTeamController.FinalTeam.value.AR![i].selected,
                                              point: createTeamController.FinalTeam.value.AR![i].point,
                                              captain: false,
                                              capSelby: createTeamController.FinalTeam.value.AR![i].capSelby,
                                              vicecaptain: createTeamController.FinalTeam.value.AR![i].vicecaptain! ? false : true,
                                              vicecapSelby: createTeamController.FinalTeam.value.AR![i].vicecapSelby,
                                            );
                                            if(createTeamController.FinalTeam.value.AR![i].vicecaptain!)
                                            {
                                              createTeamController.CVCSelected.value++;
                                            }
                                          }
                                          else
                                          {
                                            createTeamController.FinalTeam.value.AR![i] = PlayerDetailModel(
                                              firstName: createTeamController.FinalTeam.value.AR![i].firstName,
                                              lastName: createTeamController.FinalTeam.value.AR![i].lastName,
                                              imageUrl: createTeamController.FinalTeam.value.AR![i].imageUrl,
                                              credit: createTeamController.FinalTeam.value.AR![i].credit,
                                              color: createTeamController.FinalTeam.value.AR![i].color,
                                              avgPts: createTeamController.FinalTeam.value.AR![i].avgPts,
                                              selBy: createTeamController.FinalTeam.value.AR![i].selBy,
                                              teamName: createTeamController.FinalTeam.value.AR![i].teamName,
                                              selected: createTeamController.FinalTeam.value.AR![i].selected,
                                              point: createTeamController.FinalTeam.value.AR![i].point,
                                              captain: createTeamController.FinalTeam.value.AR![i].captain,
                                              capSelby: createTeamController.FinalTeam.value.AR![i].capSelby,
                                              vicecaptain: false,
                                              vicecapSelby: createTeamController.FinalTeam.value.AR![i].vicecapSelby,
                                            );
                                          }
                                        }
                                        for(int i=0; i<createTeamController.FinalTeam.value.WK!.length; i++)
                                        {
                                          createTeamController.FinalTeam.value.WK![i] = PlayerDetailModel(
                                            firstName: createTeamController.FinalTeam.value.WK![i].firstName,
                                            lastName: createTeamController.FinalTeam.value.WK![i].lastName,
                                            imageUrl: createTeamController.FinalTeam.value.WK![i].imageUrl,
                                            credit: createTeamController.FinalTeam.value.WK![i].credit,
                                            color: createTeamController.FinalTeam.value.WK![i].color,
                                            avgPts: createTeamController.FinalTeam.value.WK![i].avgPts,
                                            selBy: createTeamController.FinalTeam.value.WK![i].selBy,
                                            teamName: createTeamController.FinalTeam.value.WK![i].teamName,
                                            selected: createTeamController.FinalTeam.value.WK![i].selected,
                                            point: createTeamController.FinalTeam.value.WK![i].point,
                                            captain: createTeamController.FinalTeam.value.WK![i].captain,
                                            capSelby: createTeamController.FinalTeam.value.WK![i].capSelby,
                                            vicecaptain: false,
                                            vicecapSelby: createTeamController.FinalTeam.value.WK![i].vicecapSelby,
                                          );
                                          print("======= checkkk wkkkkk ${createTeamController.FinalTeam.value.WK![i].captain!}");
                                          if(createTeamController.FinalTeam.value.WK![i].captain!)
                                          {
                                            createTeamController.CVCSelected.value++;
                                          }
                                          // createTeamController.FinalTeam.value.WK![i] = createTeamController.FinalTeam.value.WK![i];
                                        }
                                        for(int i=0; i<createTeamController.FinalTeam.value.Bat!.length; i++)
                                        {
                                          createTeamController.FinalTeam.value.Bat![i] = PlayerDetailModel(
                                            firstName: createTeamController.FinalTeam.value.Bat![i].firstName,
                                            lastName: createTeamController.FinalTeam.value.Bat![i].lastName,
                                            imageUrl: createTeamController.FinalTeam.value.Bat![i].imageUrl,
                                            credit: createTeamController.FinalTeam.value.Bat![i].credit,
                                            color: createTeamController.FinalTeam.value.Bat![i].color,
                                            avgPts: createTeamController.FinalTeam.value.Bat![i].avgPts,
                                            selBy: createTeamController.FinalTeam.value.Bat![i].selBy,
                                            teamName: createTeamController.FinalTeam.value.Bat![i].teamName,
                                            selected: createTeamController.FinalTeam.value.Bat![i].selected,
                                            point: createTeamController.FinalTeam.value.Bat![i].point,
                                            captain: createTeamController.FinalTeam.value.Bat![i].captain,
                                            capSelby: createTeamController.FinalTeam.value.Bat![i].capSelby,
                                            vicecaptain: false,
                                            vicecapSelby: createTeamController.FinalTeam.value.Bat![i].vicecapSelby,
                                          );
                                          print("======= checkkk battt ${createTeamController.FinalTeam.value.Bat![i].captain!}");
                                          if(createTeamController.FinalTeam.value.Bat![i].captain!)
                                          {
                                            createTeamController.CVCSelected.value++;
                                          }
                                          // createTeamController.FinalTeam.value.Bat![i] = createTeamController.FinalTeam.value.Bat![i];
                                        }
                                        for(int i=0; i<createTeamController.FinalTeam.value.Bowl!.length; i++)
                                        {
                                          createTeamController.FinalTeam.value.Bowl![i] = PlayerDetailModel(
                                            firstName: createTeamController.FinalTeam.value.Bowl![i].firstName,
                                            lastName: createTeamController.FinalTeam.value.Bowl![i].lastName,
                                            imageUrl: createTeamController.FinalTeam.value.Bowl![i].imageUrl,
                                            credit: createTeamController.FinalTeam.value.Bowl![i].credit,
                                            color: createTeamController.FinalTeam.value.Bowl![i].color,
                                            avgPts: createTeamController.FinalTeam.value.Bowl![i].avgPts,
                                            selBy: createTeamController.FinalTeam.value.Bowl![i].selBy,
                                            teamName: createTeamController.FinalTeam.value.Bowl![i].teamName,
                                            selected: createTeamController.FinalTeam.value.Bowl![i].selected,
                                            point: createTeamController.FinalTeam.value.Bowl![i].point,
                                            captain: createTeamController.FinalTeam.value.Bowl![i].captain,
                                            capSelby: createTeamController.FinalTeam.value.Bowl![i].capSelby,
                                            vicecaptain: false,
                                            vicecapSelby: createTeamController.FinalTeam.value.Bowl![i].vicecapSelby,
                                          );
                                          print("======= checkkk bowlll ${createTeamController.FinalTeam.value.Bowl![i].captain!}");
                                          if(createTeamController.FinalTeam.value.Bowl![i].captain!)
                                          {
                                            createTeamController.CVCSelected.value++;
                                          }
                                          // createTeamController.FinalTeam.value.Bowl![i] = createTeamController.FinalTeam.value.Bowl![i];
                                        }
                                        createTeamController.FinalTeam.value = createTeamController.FinalTeam.value;
                                        print("======== Arrrrr ${createTeamController.CVCSelected}");
                                      },
                                      child: Container(
                                        height: Get.width/10,
                                        width: Get.width/10,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: createTeamController.FinalTeam.value.AR![index].vicecaptain! ? const Color(0xFF021852) : Colors.white,
                                            border: Border.all(color: Colors.grey.shade400)
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          createTeamController.FinalTeam.value.AR![index].vicecaptain! ? "1.5X".toUpperCase() : "VC".toUpperCase(),
                                          style: TextStyle(
                                              color: createTeamController.FinalTeam.value.AR![index].vicecaptain! ? Colors.white : Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: Get.width/50),
                                      child: Text(
                                        "${createTeamController.FinalTeam.value.AR![index].vicecapSelby}%".toUpperCase(),
                                        style: const TextStyle(
                                          color: Colors.black54,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: Get.width/30,),
                    Obx(
                      () => ListView.builder(
                        itemCount: createTeamController.FinalTeam.value.Bowl!.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                  bottom: BorderSide(color: Colors.grey.shade300),
                                )
                            ),
                            padding: EdgeInsets.only(top: Get.width/75,right: Get.width/14),
                            child: Row(
                              children: [
                                Container(
                                  height: Get.width/5,
                                  width: Get.width/4.5,
                                  // color: Colors.red,
                                  child: Stack(
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: createTeamController.FinalTeam.value.Bowl![index].imageUrl!.isNotEmpty ? CachedNetworkImage(
                                            imageUrl: createTeamController.FinalTeam.value.Bowl![index].imageUrl!,
                                            errorWidget: (context, url, error) => const Icon(Icons.error,color: Colors.black,),
                                            fadeInDuration: const Duration(seconds: 0),
                                            progressIndicatorBuilder: (context, url, downloadProgress) => Container(),
                                          ) : Image.asset("assets/image/person.png")
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: Get.width/75,left: Get.width/75),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Image.asset("assets/image/info.png",height: Get.width/25,width: Get.width/25,),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: Get.width/75,left: Get.width/75),
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Row(
                                            children: [
                                              Container(
                                                color: createTeamController.FinalTeam.value.Bowl![index].teamName!.toUpperCase() == "CSK".toUpperCase() ? Colors.black : Colors.white,
                                                padding: EdgeInsets.all(Get.width/150),
                                                child: Text(
                                                  "${createTeamController.FinalTeam.value.Bowl![index].teamName}".toUpperCase(),
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: createTeamController.FinalTeam.value.Bowl![index].teamName!.toUpperCase() == "CSK".toUpperCase() ? Colors.white : Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                color: const Color(0xFFFFF3DC),
                                                padding: EdgeInsets.all(Get.width/150),
                                                child: Text(
                                                  "BOWL".toUpperCase(),
                                                  textAlign: TextAlign.center,
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${createTeamController.FinalTeam.value.Bowl![index].firstName![0].toUpperCase()} ${createTeamController.FinalTeam.value.Bowl![index].lastName}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16
                                      ),
                                    ),
                                    SizedBox(height: Get.width/150,),
                                    Text(
                                      "${createTeamController.FinalTeam.value.Bowl![index].point} pts",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 15
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        createTeamController.CVCSelected.value = 0;
                                        for(int i=0; i<createTeamController.FinalTeam.value.Bowl!.length; i++)
                                        {
                                          if(index == i)
                                          {
                                            createTeamController.FinalTeam.value.Bowl![i] = PlayerDetailModel(
                                              firstName: createTeamController.FinalTeam.value.Bowl![i].firstName,
                                              lastName: createTeamController.FinalTeam.value.Bowl![i].lastName,
                                              imageUrl: createTeamController.FinalTeam.value.Bowl![i].imageUrl,
                                              credit: createTeamController.FinalTeam.value.Bowl![i].credit,
                                              color: createTeamController.FinalTeam.value.Bowl![i].color,
                                              avgPts: createTeamController.FinalTeam.value.Bowl![i].avgPts,
                                              selBy: createTeamController.FinalTeam.value.Bowl![i].selBy,
                                              teamName: createTeamController.FinalTeam.value.Bowl![i].teamName,
                                              selected: createTeamController.FinalTeam.value.Bowl![i].selected,
                                              point: createTeamController.FinalTeam.value.Bowl![i].point,
                                              captain: createTeamController.FinalTeam.value.Bowl![i].captain! ? false : true,
                                              capSelby: createTeamController.FinalTeam.value.Bowl![i].capSelby,
                                              vicecaptain: false,
                                              vicecapSelby: createTeamController.FinalTeam.value.Bowl![i].vicecapSelby,
                                            );
                                            if(createTeamController.FinalTeam.value.Bowl![i].captain!)
                                            {
                                              createTeamController.CVCSelected.value++;
                                            }
                                          }
                                          else
                                          {
                                            createTeamController.FinalTeam.value.Bowl![i] = PlayerDetailModel(
                                              firstName: createTeamController.FinalTeam.value.Bowl![i].firstName,
                                              lastName: createTeamController.FinalTeam.value.Bowl![i].lastName,
                                              imageUrl: createTeamController.FinalTeam.value.Bowl![i].imageUrl,
                                              credit: createTeamController.FinalTeam.value.Bowl![i].credit,
                                              color: createTeamController.FinalTeam.value.Bowl![i].color,
                                              avgPts: createTeamController.FinalTeam.value.Bowl![i].avgPts,
                                              selBy: createTeamController.FinalTeam.value.Bowl![i].selBy,
                                              teamName: createTeamController.FinalTeam.value.Bowl![i].teamName,
                                              selected: createTeamController.FinalTeam.value.Bowl![i].selected,
                                              point: createTeamController.FinalTeam.value.Bowl![i].point,
                                              captain: false,
                                              capSelby: createTeamController.FinalTeam.value.Bowl![i].capSelby,
                                              vicecaptain: createTeamController.FinalTeam.value.Bowl![i].vicecaptain,
                                              vicecapSelby: createTeamController.FinalTeam.value.Bowl![i].vicecapSelby,
                                            );
                                          }
                                        }
                                        for(int i=0; i<createTeamController.FinalTeam.value.WK!.length; i++)
                                        {
                                          createTeamController.FinalTeam.value.WK![i] = PlayerDetailModel(
                                            firstName: createTeamController.FinalTeam.value.WK![i].firstName,
                                            lastName: createTeamController.FinalTeam.value.WK![i].lastName,
                                            imageUrl: createTeamController.FinalTeam.value.WK![i].imageUrl,
                                            credit: createTeamController.FinalTeam.value.WK![i].credit,
                                            color: createTeamController.FinalTeam.value.WK![i].color,
                                            avgPts: createTeamController.FinalTeam.value.WK![i].avgPts,
                                            selBy: createTeamController.FinalTeam.value.WK![i].selBy,
                                            teamName: createTeamController.FinalTeam.value.WK![i].teamName,
                                            selected: createTeamController.FinalTeam.value.WK![i].selected,
                                            point: createTeamController.FinalTeam.value.WK![i].point,
                                            captain: false,
                                            capSelby: createTeamController.FinalTeam.value.WK![i].capSelby,
                                            vicecaptain: createTeamController.FinalTeam.value.WK![i].vicecaptain,
                                            vicecapSelby: createTeamController.FinalTeam.value.WK![i].vicecapSelby,
                                          );
                                          print("======= checkkk wkkk ${createTeamController.FinalTeam.value.WK![i].vicecaptain!}");
                                          if(createTeamController.FinalTeam.value.WK![i].vicecaptain!)
                                          {
                                            createTeamController.CVCSelected.value++;
                                          }
                                          // createTeamController.FinalTeam.value.WK![i] = createTeamController.FinalTeam.value.WK![i];
                                        }
                                        for(int i=0; i<createTeamController.FinalTeam.value.AR!.length; i++)
                                        {
                                          createTeamController.FinalTeam.value.AR![i] = PlayerDetailModel(
                                            firstName: createTeamController.FinalTeam.value.AR![i].firstName,
                                            lastName: createTeamController.FinalTeam.value.AR![i].lastName,
                                            imageUrl: createTeamController.FinalTeam.value.AR![i].imageUrl,
                                            credit: createTeamController.FinalTeam.value.AR![i].credit,
                                            color: createTeamController.FinalTeam.value.AR![i].color,
                                            avgPts: createTeamController.FinalTeam.value.AR![i].avgPts,
                                            selBy: createTeamController.FinalTeam.value.AR![i].selBy,
                                            teamName: createTeamController.FinalTeam.value.AR![i].teamName,
                                            selected: createTeamController.FinalTeam.value.AR![i].selected,
                                            point: createTeamController.FinalTeam.value.AR![i].point,
                                            captain: false,
                                            capSelby: createTeamController.FinalTeam.value.AR![i].capSelby,
                                            vicecaptain: createTeamController.FinalTeam.value.AR![i].vicecaptain,
                                            vicecapSelby: createTeamController.FinalTeam.value.AR![i].vicecapSelby,
                                          );
                                          print("======= checkkk arrrr ${createTeamController.FinalTeam.value.AR![i].vicecaptain!}");
                                          if(createTeamController.FinalTeam.value.AR![i].vicecaptain!)
                                          {
                                            createTeamController.CVCSelected.value++;
                                          }
                                          // createTeamController.FinalTeam.value.AR![i] = createTeamController.FinalTeam.value.AR![i];
                                        }
                                        for(int i=0; i<createTeamController.FinalTeam.value.Bat!.length; i++)
                                        {
                                          createTeamController.FinalTeam.value.Bat![i] = PlayerDetailModel(
                                            firstName: createTeamController.FinalTeam.value.Bat![i].firstName,
                                            lastName: createTeamController.FinalTeam.value.Bat![i].lastName,
                                            imageUrl: createTeamController.FinalTeam.value.Bat![i].imageUrl,
                                            credit: createTeamController.FinalTeam.value.Bat![i].credit,
                                            color: createTeamController.FinalTeam.value.Bat![i].color,
                                            avgPts: createTeamController.FinalTeam.value.Bat![i].avgPts,
                                            selBy: createTeamController.FinalTeam.value.Bat![i].selBy,
                                            teamName: createTeamController.FinalTeam.value.Bat![i].teamName,
                                            selected: createTeamController.FinalTeam.value.Bat![i].selected,
                                            point: createTeamController.FinalTeam.value.Bat![i].point,
                                            captain: false,
                                            capSelby: createTeamController.FinalTeam.value.Bat![i].capSelby,
                                            vicecaptain: createTeamController.FinalTeam.value.Bat![i].vicecaptain,
                                            vicecapSelby: createTeamController.FinalTeam.value.Bat![i].vicecapSelby,
                                          );
                                          print("======= checkkk batttt ${createTeamController.FinalTeam.value.Bat![i].vicecaptain!}");
                                          if(createTeamController.FinalTeam.value.Bat![i].vicecaptain!)
                                          {
                                            createTeamController.CVCSelected.value++;
                                          }
                                          // createTeamController.FinalTeam.value.Bat![i] = createTeamController.FinalTeam.value.Bat![i];
                                        }
                                        createTeamController.FinalTeam.value = createTeamController.FinalTeam.value;
                                      },
                                      child: Container(
                                        height: Get.width/10,
                                        width: Get.width/10,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: createTeamController.FinalTeam.value.Bowl![index].captain! ? const Color(0xFF021852) : Colors.white,
                                            border: Border.all(color: Colors.grey.shade400)
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          createTeamController.FinalTeam.value.Bowl![index].captain! ? "2X".toUpperCase() : "C".toUpperCase(),
                                          style: TextStyle(
                                              color: createTeamController.FinalTeam.value.Bowl![index].captain! ? Colors.white : Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: Get.width/50),
                                      child: Text(
                                        "${createTeamController.FinalTeam.value.Bowl![index].capSelby}%".toUpperCase(),
                                        style: const TextStyle(
                                          color: Colors.black54,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: Get.width/16,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        createTeamController.CVCSelected.value = 0;
                                        for(int i=0; i<createTeamController.FinalTeam.value.Bowl!.length; i++)
                                        {
                                          if(index == i)
                                          {
                                            createTeamController.FinalTeam.value.Bowl![i] = PlayerDetailModel(
                                              firstName: createTeamController.FinalTeam.value.Bowl![i].firstName,
                                              lastName: createTeamController.FinalTeam.value.Bowl![i].lastName,
                                              imageUrl: createTeamController.FinalTeam.value.Bowl![i].imageUrl,
                                              credit: createTeamController.FinalTeam.value.Bowl![i].credit,
                                              color: createTeamController.FinalTeam.value.Bowl![i].color,
                                              avgPts: createTeamController.FinalTeam.value.Bowl![i].avgPts,
                                              selBy: createTeamController.FinalTeam.value.Bowl![i].selBy,
                                              teamName: createTeamController.FinalTeam.value.Bowl![i].teamName,
                                              selected: createTeamController.FinalTeam.value.Bowl![i].selected,
                                              point: createTeamController.FinalTeam.value.Bowl![i].point,
                                              captain: false,
                                              capSelby: createTeamController.FinalTeam.value.Bowl![i].capSelby,
                                              vicecaptain: createTeamController.FinalTeam.value.Bowl![i].vicecaptain! ? false : true,
                                              vicecapSelby: createTeamController.FinalTeam.value.Bowl![i].vicecapSelby,
                                            );
                                            if(createTeamController.FinalTeam.value.Bowl![i].vicecaptain!)
                                            {
                                              createTeamController.CVCSelected.value++;
                                            }
                                          }
                                          else
                                          {
                                            createTeamController.FinalTeam.value.Bowl![i] = PlayerDetailModel(
                                              firstName: createTeamController.FinalTeam.value.Bowl![i].firstName,
                                              lastName: createTeamController.FinalTeam.value.Bowl![i].lastName,
                                              imageUrl: createTeamController.FinalTeam.value.Bowl![i].imageUrl,
                                              credit: createTeamController.FinalTeam.value.Bowl![i].credit,
                                              color: createTeamController.FinalTeam.value.Bowl![i].color,
                                              avgPts: createTeamController.FinalTeam.value.Bowl![i].avgPts,
                                              selBy: createTeamController.FinalTeam.value.Bowl![i].selBy,
                                              teamName: createTeamController.FinalTeam.value.Bowl![i].teamName,
                                              selected: createTeamController.FinalTeam.value.Bowl![i].selected,
                                              point: createTeamController.FinalTeam.value.Bowl![i].point,
                                              captain: createTeamController.FinalTeam.value.Bowl![i].captain,
                                              capSelby: createTeamController.FinalTeam.value.Bowl![i].capSelby,
                                              vicecaptain: false,
                                              vicecapSelby: createTeamController.FinalTeam.value.Bowl![i].vicecapSelby,
                                            );
                                          }
                                        }
                                        for(int i=0; i<createTeamController.FinalTeam.value.WK!.length; i++)
                                        {
                                          createTeamController.FinalTeam.value.WK![i] = PlayerDetailModel(
                                            firstName: createTeamController.FinalTeam.value.WK![i].firstName,
                                            lastName: createTeamController.FinalTeam.value.WK![i].lastName,
                                            imageUrl: createTeamController.FinalTeam.value.WK![i].imageUrl,
                                            credit: createTeamController.FinalTeam.value.WK![i].credit,
                                            color: createTeamController.FinalTeam.value.WK![i].color,
                                            avgPts: createTeamController.FinalTeam.value.WK![i].avgPts,
                                            selBy: createTeamController.FinalTeam.value.WK![i].selBy,
                                            teamName: createTeamController.FinalTeam.value.WK![i].teamName,
                                            selected: createTeamController.FinalTeam.value.WK![i].selected,
                                            point: createTeamController.FinalTeam.value.WK![i].point,
                                            captain: createTeamController.FinalTeam.value.WK![i].captain,
                                            capSelby: createTeamController.FinalTeam.value.WK![i].capSelby,
                                            vicecaptain: false,
                                            vicecapSelby: createTeamController.FinalTeam.value.WK![i].vicecapSelby,
                                          );
                                          print("======= checkkk wkkk ${createTeamController.FinalTeam.value.WK![i].captain!}");
                                          if(createTeamController.FinalTeam.value.WK![i].captain!)
                                          {
                                            createTeamController.CVCSelected.value++;
                                          }
                                          // createTeamController.FinalTeam.value.WK![i] = createTeamController.FinalTeam.value.WK![i];
                                        }
                                        for(int i=0; i<createTeamController.FinalTeam.value.AR!.length; i++)
                                        {
                                          createTeamController.FinalTeam.value.AR![i] = PlayerDetailModel(
                                            firstName: createTeamController.FinalTeam.value.AR![i].firstName,
                                            lastName: createTeamController.FinalTeam.value.AR![i].lastName,
                                            imageUrl: createTeamController.FinalTeam.value.AR![i].imageUrl,
                                            credit: createTeamController.FinalTeam.value.AR![i].credit,
                                            color: createTeamController.FinalTeam.value.AR![i].color,
                                            avgPts: createTeamController.FinalTeam.value.AR![i].avgPts,
                                            selBy: createTeamController.FinalTeam.value.AR![i].selBy,
                                            teamName: createTeamController.FinalTeam.value.AR![i].teamName,
                                            selected: createTeamController.FinalTeam.value.AR![i].selected,
                                            point: createTeamController.FinalTeam.value.AR![i].point,
                                            captain: createTeamController.FinalTeam.value.AR![i].captain,
                                            capSelby: createTeamController.FinalTeam.value.AR![i].capSelby,
                                            vicecaptain: false,
                                            vicecapSelby: createTeamController.FinalTeam.value.AR![i].vicecapSelby,
                                          );
                                          print("======= checkkk arrrr ${createTeamController.FinalTeam.value.AR![i].captain!}");
                                          if(createTeamController.FinalTeam.value.AR![i].captain!)
                                          {
                                            createTeamController.CVCSelected.value++;
                                          }
                                          // createTeamController.FinalTeam.value.AR![i] = createTeamController.FinalTeam.value.AR![i];
                                        }
                                        for(int i=0; i<createTeamController.FinalTeam.value.Bat!.length; i++)
                                        {
                                          createTeamController.FinalTeam.value.Bat![i] = PlayerDetailModel(
                                            firstName: createTeamController.FinalTeam.value.Bat![i].firstName,
                                            lastName: createTeamController.FinalTeam.value.Bat![i].lastName,
                                            imageUrl: createTeamController.FinalTeam.value.Bat![i].imageUrl,
                                            credit: createTeamController.FinalTeam.value.Bat![i].credit,
                                            color: createTeamController.FinalTeam.value.Bat![i].color,
                                            avgPts: createTeamController.FinalTeam.value.Bat![i].avgPts,
                                            selBy: createTeamController.FinalTeam.value.Bat![i].selBy,
                                            teamName: createTeamController.FinalTeam.value.Bat![i].teamName,
                                            selected: createTeamController.FinalTeam.value.Bat![i].selected,
                                            point: createTeamController.FinalTeam.value.Bat![i].point,
                                            captain: createTeamController.FinalTeam.value.Bat![i].captain,
                                            capSelby: createTeamController.FinalTeam.value.Bat![i].capSelby,
                                            vicecaptain: false,
                                            vicecapSelby: createTeamController.FinalTeam.value.Bat![i].vicecapSelby,
                                          );
                                          print("======= checkkk battt ${createTeamController.FinalTeam.value.Bat![i].captain!}");
                                          if(createTeamController.FinalTeam.value.Bat![i].captain!)
                                          {
                                            createTeamController.CVCSelected.value++;
                                          }
                                          // createTeamController.FinalTeam.value.Bat![i] = createTeamController.FinalTeam.value.Bat![i];
                                        }
                                        print("===== bowllllllll ${createTeamController.CVCSelected}");
                                        createTeamController.FinalTeam.value = createTeamController.FinalTeam.value;
                                      },
                                      child: Container(
                                        height: Get.width/10,
                                        width: Get.width/10,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: createTeamController.FinalTeam.value.Bowl![index].vicecaptain! ? const Color(0xFF021852) : Colors.white,
                                            border: Border.all(color: Colors.grey.shade400)
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          createTeamController.FinalTeam.value.Bowl![index].vicecaptain! ? "1.5X".toUpperCase() : "VC".toUpperCase(),
                                          style: TextStyle(
                                              color: createTeamController.FinalTeam.value.Bowl![index].vicecaptain! ? Colors.white : Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: Get.width/50),
                                      child: Text(
                                        "${createTeamController.FinalTeam.value.Bowl![index].vicecapSelby}%".toUpperCase(),
                                        style: const TextStyle(
                                          color: Colors.black54,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: Obx(
          () => Container(
            height: Get.width/5.6,
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: Get.width/9,
                  width: Get.width/1.7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(6)
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.visibility_outlined,color: Colors.green,size: Get.width/20,),
                          SizedBox(width: Get.width/90,),
                          Text(
                            "PREVIEW".toUpperCase(),
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                            ),
                          )
                        ],
                      ),
                      Text(
                        "/",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 30
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.assessment_outlined,color: Colors.grey.shade400,size: Get.width/20,),
                          SizedBox(width: Get.width/90,),
                          Text(
                            "LINEUP".toUpperCase(),
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: Get.width/30,),
                Container(
                  height: Get.width/9,
                  width: Get.width/5,
                  decoration: BoxDecoration(
                    color: createTeamController.CVCSelected.value == 2 ? Colors.green : Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(6)
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "SAVE".toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
