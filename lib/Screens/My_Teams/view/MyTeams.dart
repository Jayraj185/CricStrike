import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTeamsPage extends StatefulWidget {
  const MyTeamsPage({Key? key}) : super(key: key);

  @override
  State<MyTeamsPage> createState() => _MyTeamsPageState();
}

class _MyTeamsPageState extends State<MyTeamsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "  Match\nstart in",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "03h 15m 02s",
                style: TextStyle(
                    color: Color(0xFFEFD473),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                height: 40,
                width: 115,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1.5),
                    borderRadius: BorderRadius.circular(6)),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.notifications_active,
                      color: Colors.white,
                      size: 21,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Remind Me",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Teams (1)",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
              Container(
                height: 45,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.white, width: 1.5)),
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    dropdownColor: Color(0xff021852),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    iconEnabledColor: Colors.white,
                    items: const [
                      DropdownMenuItem(
                        child: Text("Sort By Last Edit"),
                        value: "Sort By Last Edit",
                      ),
                      DropdownMenuItem(
                        child: Text("Sort By Previous Edit"),
                        value: "Sort By Previous Edit",
                      ),
                    ],
                    onChanged: (value) {},
                    value: "Sort By Last Edit",
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 30),
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
                                              padding: EdgeInsets.only(top: 6.0),
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
                                                width: 70,
                                                margin: EdgeInsets.only(top: 21),
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(6)
                                                ),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "V. Kohli",
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,
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
                                              padding: EdgeInsets.only(top: 6.0),
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
                                                width: 70,
                                                margin: EdgeInsets.only(top: 21),
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
                  ),
                ),
              ],
            ),
          ),
        ),
        Spacer(),
        Container(
          height: 45,
          width: 150,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFFFE68B),
                    Color(0xFFFFD700)
                  ]
              ),
            borderRadius: BorderRadius.circular(9)
          ),
        ),
        SizedBox(height: 30,)
      ],
    );
  }
}
