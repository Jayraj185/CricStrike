import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          backgroundColor: const Color(0xff021852),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.close,
              color: Colors.white,
            ),
          ),
          title: const Text(
            "Tiger XII(T1)",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 6),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(66),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(
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
                          const Text(
                            "Players",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 12),
                          ),
                          const Text.rich(TextSpan(children: [
                            TextSpan(
                              text: "11",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            TextSpan(
                              text: " /11",
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 12),
                            ),
                          ])),
                        ],
                      ),
                      Container(
                        height: 21,
                        margin: const EdgeInsets.only(left: 30),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3)),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: const Text(
                          "RCB",
                          style: TextStyle(
                              color: Color(0xFF021852),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text(
                        "6",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      const Text(
                        ":",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      const Text(
                        "5",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Container(
                        height: 21,
                        margin: const EdgeInsets.only(right: 30),
                        decoration: BoxDecoration(
                            color: const Color(0xFF021852),
                            borderRadius: BorderRadius.circular(3)),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: const Text(
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
                          const Text(
                            "Credit Left",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 14),
                          ),
                          const Text(
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
                  const SizedBox(
                    height: 6,
                  )
                ],
              ),
            ),
          ),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF007432),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF0B8640),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF007432),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF0B8640),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF007432),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF0B8640),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF007432),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1000),
                  border: Border.all(color: Colors.white, width: 0.5)),
            ),
            Container(
              width: 100,
              height: 280,
              color: const Color(0xFF4FA042),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Align(
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
                    child: Column(
                      children: [
                        SizedBox(
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
                                      color: const Color(0xFF021852),
                                      borderRadius: BorderRadius.circular(4)),
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 3),
                                  alignment: Alignment.center,
                                  child: const Text(
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
                        const Padding(
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
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "BATTER",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 0),
                        child: Column(
                          children: [
                            SizedBox(
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
                                          color: const Color(0xFF021852),
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      alignment: Alignment.center,
                                      padding:
                                          const EdgeInsets.symmetric(horizontal: 3),
                                      child: const Text(
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
                            const Padding(
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
                        margin: const EdgeInsets.only(top: 0),
                        child: Column(
                          children: [
                            SizedBox(
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
                                          color: const Color(0xFF021852),
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      padding:
                                          const EdgeInsets.symmetric(horizontal: 3),
                                      alignment: Alignment.center,
                                      child: const Text(
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
                            const Padding(
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
                        margin: const EdgeInsets.only(top: 0),
                        child: Column(
                          children: [
                            SizedBox(
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
                                          const EdgeInsets.symmetric(horizontal: 3),
                                      alignment: Alignment.center,
                                      child: const Text(
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
                            const Padding(
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
                        margin: const EdgeInsets.only(top: 0),
                        child: Column(
                          children: [
                            SizedBox(
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
                                          const EdgeInsets.symmetric(horizontal: 3),
                                      alignment: Alignment.center,
                                      child: const Text(
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
                            const Padding(
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
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "ALL ROUNDERS",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 0),
                        child: Column(
                          children: [
                            SizedBox(
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
                                          const EdgeInsets.symmetric(horizontal: 3),
                                      alignment: Alignment.center,
                                      child: const Text(
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
                            const Padding(
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
                        margin: const EdgeInsets.only(top: 0),
                        child: Column(
                          children: [
                            SizedBox(
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
                                          color: const Color(0xFF021852),
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      padding:
                                          const EdgeInsets.symmetric(horizontal: 3),
                                      alignment: Alignment.center,
                                      child: const Text(
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
                            const Padding(
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
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "BOWLERS",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 0),
                        child: Column(
                          children: [
                            SizedBox(
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
                                          color: const Color(0xFF021852),
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      padding:
                                          const EdgeInsets.symmetric(horizontal: 3),
                                      alignment: Alignment.center,
                                      child: const Text(
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
                            const Padding(
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
                        margin: const EdgeInsets.only(top: 0),
                        child: Column(
                          children: [
                            SizedBox(
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
                                          color: const Color(0xFF021852),
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      padding:
                                          const EdgeInsets.symmetric(horizontal: 3),
                                      alignment: Alignment.center,
                                      child: const Text(
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
                            const Padding(
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
                        margin: const EdgeInsets.only(top: 0),
                        child: Column(
                          children: [
                            SizedBox(
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
                                          const EdgeInsets.symmetric(horizontal: 3),
                                      alignment: Alignment.center,
                                      child: const Text(
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
                            const Padding(
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
                        margin: const EdgeInsets.only(top: 0),
                        child: Column(
                          children: [
                            SizedBox(
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
                                          const EdgeInsets.symmetric(horizontal: 3),
                                      alignment: Alignment.center,
                                      child: const Text(
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
                            const Padding(
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
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
