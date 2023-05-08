import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PredictionPage extends StatefulWidget {
  const PredictionPage({Key? key}) : super(key: key);

  @override
  State<PredictionPage> createState() => _PredictionPageState();
}

class _PredictionPageState extends State<PredictionPage> {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "TODAY PREDICTION",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "TODAY PREDICTION",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 15,),
              Container(width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(
                      0xffefefef)),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("RCB vs CSK",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      SizedBox(height: 15,),
                      InkWell(
                        onTap: (){
                          Get.toNamed('team_Preview');
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
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(9),
                                              bottomLeft: Radius.circular(9))),
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
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(9),
                                              bottomRight: Radius.circular(9))),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 12,top: 10,left: 12),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Tiget XII(T1)",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15
                                          ),
                                        ),
                                        Container(
                                          height: 30,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(6)
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(Icons.share,color: Colors.black,size: 15,),
                                              Text(
                                                "Share Team",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 10
                                                ),
                                              ),
                                              Image.asset("assets/image/cryptocurrency.png",height: 15,width: 15,fit: BoxFit.fill,)
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
                                                    height: double.infinity,
                                                    // color: Colors.black87,
                                                    child: Stack(
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets.only(top: 6.0,right: 3),
                                                          child: Align(
                                                            alignment: Alignment.topCenter,
                                                            child: CircleAvatar(
                                                              radius: 40,
                                                              backgroundColor: Colors.white,
                                                              backgroundImage: NetworkImage("https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/2.png"),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment: Alignment.center,
                                                          child: Container(
                                                            height: 30,
                                                            margin: EdgeInsets.only(top: 21,right: 3),
                                                            decoration: BoxDecoration(
                                                                color: Colors.white,
                                                                borderRadius: BorderRadius.circular(6)
                                                            ),
                                                            alignment: Alignment.center,
                                                            child: Text(
                                                              "V. Kohli",
                                                              maxLines: 1,
                                                              style: TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.w500
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment: Alignment.topRight,
                                                          child: Container(
                                                            height: 21,
                                                            width: 21,
                                                            decoration: BoxDecoration(
                                                                color: Colors.white,
                                                                shape: BoxShape.circle
                                                            ),
                                                            alignment: Alignment.center,
                                                            child: Text(
                                                              "C",
                                                              style: TextStyle(
                                                                  color: Colors.black,
                                                                  fontWeight: FontWeight.bold,
                                                                  fontSize: 12
                                                              ),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    height: double.infinity,
                                                    // color: Colors.green,
                                                    child: Stack(
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets.only(top: 6.0,left: 3),
                                                          child: Align(
                                                            alignment: Alignment.topCenter,
                                                            child: CircleAvatar(
                                                              radius: 40,
                                                              backgroundColor: Colors.white,
                                                              backgroundImage: NetworkImage("https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/94.png"),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment: Alignment.center,
                                                          child: Container(
                                                            height: 30,
                                                            margin: EdgeInsets.only(top: 21,left: 3),
                                                            decoration: BoxDecoration(
                                                                color: Color(0xFF021852),
                                                                borderRadius: BorderRadius.circular(6)
                                                            ),
                                                            alignment: Alignment.center,
                                                            child: Text(
                                                              "F. Plessis",
                                                              maxLines: 1,
                                                              overflow: TextOverflow.ellipsis,
                                                              style: TextStyle(
                                                                  color: Colors.white,
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.w500
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment: Alignment.topRight,
                                                          child: Container(
                                                            height: 21,
                                                            width: 21,
                                                            decoration: BoxDecoration(
                                                                color: Color(0xFF021852),
                                                                shape: BoxShape.circle
                                                            ),
                                                            alignment: Alignment.center,
                                                            child: Text(
                                                              "VC",
                                                              style: TextStyle(
                                                                  color: Colors.white,
                                                                  fontWeight: FontWeight.bold,
                                                                  fontSize: 12
                                                              ),
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
                                          margin: EdgeInsets.only(top: 15),
                                          alignment: Alignment.topCenter,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Text(
                                                      "RCB 6",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 14
                                                      ),
                                                    ),
                                                    Text(
                                                      "CSK 5",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 14
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 6,),
                                              Divider(thickness: 1.5,color: Colors.white,),
                                              SizedBox(height: 6,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        "WK",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontWeight: FontWeight.w500
                                                        ),
                                                      ),
                                                      Text(
                                                        "2",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontWeight: FontWeight.w500
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        "AR",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontWeight: FontWeight.w500
                                                        ),
                                                      ),
                                                      Text(
                                                        "3",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontWeight: FontWeight.w500
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        "BAT",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontWeight: FontWeight.w500
                                                        ),
                                                      ),
                                                      Text(
                                                        "3",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontWeight: FontWeight.w500
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        "BOWL",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontWeight: FontWeight.w500
                                                        ),
                                                      ),
                                                      Text(
                                                        "3",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontWeight: FontWeight.w500
                                                        ),
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
                                          bottomLeft: Radius.circular(9),
                                          bottomRight: Radius.circular(9))
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 12),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                color: Color(0xFF021852),
                                                shape: BoxShape.circle
                                            ),
                                            margin: EdgeInsets.only(right: 6),
                                            alignment: Alignment.center,
                                            child: Icon(Icons.visibility,color: Colors.white, size: 21,),
                                          ),
                                          Text(
                                            "Preview",
                                            style: TextStyle(
                                                color: Color(0xFF021852),
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold
                                            ),
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
                    ],
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "TODAY PREDICTION",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "CSK VS RCB",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
