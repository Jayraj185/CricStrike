import 'package:flutter/material.dart';

class TeamPreviewPage extends StatefulWidget {
  const TeamPreviewPage({Key? key}) : super(key: key);

  @override
  State<TeamPreviewPage> createState() => _TeamPreviewPageState();
}

class _TeamPreviewPageState extends State<TeamPreviewPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF2B3C6A),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.close,
              color: Colors.white,
            ),
          ),
          title: Text(
            "Tiger XII(T1)",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 6),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(66),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    thickness: 1.2,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Players",
                            style: TextStyle(color: Colors.white70, fontSize: 12),
                          ),
                          Text.rich(TextSpan(children: [
                            TextSpan(
                              text: "11",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            TextSpan(
                              text: " /11",
                              style:
                                  TextStyle(color: Colors.white70, fontSize: 12),
                            ),
                          ])),
                        ],
                      ),
                      Container(
                        height: 21,
                        margin: EdgeInsets.only(left: 30),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3)),
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          "RCB",
                          style: TextStyle(
                              color: Color(0xFF021852),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),

                      Text(
                        "6",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Text(
                        ":",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Text(
                        "5",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Container(
                        height: 21,
                        margin: EdgeInsets.only(right: 30),
                        decoration: BoxDecoration(
                            color: Color(0xFF021852),
                            borderRadius: BorderRadius.circular(3)),
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          "CSK",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Credit Left",
                            style: TextStyle(color: Colors.white70, fontSize: 14),
                          ),
                          Text(
                            "0",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  )
                ],
              ),
            ),
          ),
        ),
        body: Container(
          child: Stack(
            children: [
              Row(
                children: [
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
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                    border: Border.all(color: Colors.white, width: 0.5)),
              ),
              Container(
                color: Color(0xFF4FA042),
                margin: EdgeInsets.symmetric(horizontal: 145, vertical: 221),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          "KEEPER",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            // color: Colors.red,
                            child: Stack(
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Image.network(
                                      "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/601.png",
                                      fit: BoxFit.fill,
                                      height: 70,
                                      width: 70,
                                    )),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 23,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF021852),
                                        borderRadius: BorderRadius.circular(4)),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 3),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "D. Conway",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 6),
                            child: Text(
                              "9 Cr",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: Text(
                          "BATTER",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                // color: Colors.red,
                                child: Stack(
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Image.network(
                                          "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/102.png",
                                          fit: BoxFit.fill,
                                          height: 70,
                                          width: 70,
                                        )),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 23,
                                        decoration: BoxDecoration(
                                            color: Color(0xFF021852),
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        alignment: Alignment.center,
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 3),
                                        child: Text(
                                          "R. Gaikwad",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 6),
                                child: Text(
                                  "8 Cr",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                // color: Colors.red,
                                child: Stack(
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Image.network(
                                          "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/211.png",
                                          fit: BoxFit.fill,
                                          height: 70,
                                          width: 70,
                                        )),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 23,
                                        decoration: BoxDecoration(
                                            color: Color(0xFF021852),
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 3),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "S. Dube",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 6),
                                child: Text(
                                  "7 Cr",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                // color: Colors.red,
                                child: Stack(
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Image.network(
                                          "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/94.png",
                                          fit: BoxFit.fill,
                                          height: 70,
                                          width: 70,
                                        )),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 23,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 3),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "F. Plessis",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Color(0xFF021852),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 6),
                                child: Text(
                                  "11 Cr",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                // color: Colors.red,
                                child: Stack(
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Image.network(
                                          "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/2.png",
                                          fit: BoxFit.fill,
                                          height: 70,
                                          width: 70,
                                        )),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 23,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 3),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "V. Kohli",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Color(0xFF021852),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 6),
                                child: Text(
                                  "12 Cr",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: Text(
                          "ALL ROUNDERS",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                // color: Colors.red,
                                child: Stack(
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Image.network(
                                          "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/28.png",
                                          fit: BoxFit.fill,
                                          height: 70,
                                          width: 70,
                                        )),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 23,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 3),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "G. Maxwell",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Color(0xFF021852),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 6),
                                child: Text(
                                  "11 Cr",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                // color: Colors.red,
                                child: Stack(
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Image.network(
                                          "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/46.png",
                                          fit: BoxFit.fill,
                                          height: 70,
                                          width: 70,
                                        )),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 23,
                                        decoration: BoxDecoration(
                                            color: Color(0xFF021852),
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 3),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "R. Jadeja",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 6),
                                child: Text(
                                  "9 Cr",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: Text(
                          "BOWLERS",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                // color: Colors.red,
                                child: Stack(
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Image.network(
                                          "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/1014.png",
                                          fit: BoxFit.fill,
                                          height: 70,
                                          width: 70,
                                        )),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 23,
                                        decoration: BoxDecoration(
                                            color: Color(0xFF021852),
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 3),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "M. Pathiran",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 6),
                                child: Text(
                                  "9 Cr",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                // color: Colors.red,
                                child: Stack(
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Image.network(
                                          "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/91.png",
                                          fit: BoxFit.fill,
                                          height: 70,
                                          width: 70,
                                        )),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 23,
                                        decoration: BoxDecoration(
                                            color: Color(0xFF021852),
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 3),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "D. Chahar",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 6),
                                child: Text(
                                  "9 Cr",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                // color: Colors.red,
                                child: Stack(
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Image.network(
                                          "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/114.png",
                                          fit: BoxFit.fill,
                                          height: 70,
                                          width: 70,
                                        )),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 23,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 3),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "H. Patel",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Color(0xFF021852),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 6),
                                child: Text(
                                  "6 Cr",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                // color: Colors.red,
                                child: Stack(
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Image.network(
                                          "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/63.png",
                                          fit: BoxFit.fill,
                                          height: 70,
                                          width: 70,
                                        )),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 23,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 3),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "M. Siraj",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Color(0xFF021852),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 6),
                                child: Text(
                                  "9 Cr",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
