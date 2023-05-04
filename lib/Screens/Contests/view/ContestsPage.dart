import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContestsPage extends StatefulWidget {
  const ContestsPage({Key? key}) : super(key: key);

  @override
  State<ContestsPage> createState() => _ContestsPageState();
}

class _ContestsPageState extends State<ContestsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white,width: 1.5),
                    borderRadius: BorderRadius.circular(9)
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Enter Contest Code",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15,),
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white,width: 1.5),
                    borderRadius: BorderRadius.circular(9)
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Create Contest",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16
                        ),
                      ),
                      Icon(Icons.add,color: Colors.white,)
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Mega Event",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),
              ),
              Text(
                "Get Ready for Mega Winnigs",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  SizedBox(height: 12,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "₹3,000,000",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      Text(
                        "Guaranted\nPrize",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6,),
                  Row(
                    children: [
                      Container(
                        height: 9,
                        width: 215,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(9),bottomLeft: Radius.circular(9)),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFFF8C745),
                                  Color(0xFFE77221),
                                ]
                            )
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 9,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(9),bottomRight: Radius.circular(9)),
                              color: Colors.black12
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "15,00,000 tickets left",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 12
                        ),
                      ),
                      Text(
                        "Upto 500 Entries",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w400,
                            fontSize: 11
                        ),
                      ),
                      Text(
                        "18,000 Total Tickets",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 12
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 21,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            // color: Colors.red,
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "1",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 6),
                                  child: Text(
                                    "st",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 6,),
                          Text(
                            "First Prize\n₹2,15,000",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 14,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 95,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(width: 1.5,color: Color(0xFF00A3FF))
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "PRIZE LIST",
                          style: TextStyle(
                              color: Color(0xFF00A3FF),
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 115,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(9),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "₹39",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6,),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Use ₹3.1 Bonus",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Mega Event IPL - 2023",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Low-Entry Contest",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                ),
              ),
              Text(
                "Start Small, Win Big",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          ListView.builder(
            itemCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      SizedBox(height: 12,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "₹3,000,000",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Text(
                            "Guaranted\nPrize",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Container(
                            height: 9,
                            width: 215,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(9),bottomLeft: Radius.circular(9)),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xFFF8C745),
                                      Color(0xFFE77221),
                                    ]
                                )
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 9,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(9),bottomRight: Radius.circular(9)),
                                  color: Colors.black12
                              ),
                            ),
                          ),

                        ],
                      ),
                      SizedBox(height: 6,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "15,00,000 tickets left",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 12
                            ),
                          ),
                          Text(
                            "Upto 500 Entries",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w400,
                                fontSize: 11
                            ),
                          ),
                          Text(
                            "18,000 Total Tickets",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 12
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 21,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                // color: Colors.red,
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "1",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 6),
                                      child: Text(
                                        "st",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 6,),
                              Text(
                                "First Prize\n₹2,15,000",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 40,
                            width: 95,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                border: Border.all(width: 1.5,color: Color(0xFF00A3FF))
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "PRIZE LIST",
                              style: TextStyle(
                                  color: Color(0xFF00A3FF),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 115,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(9),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "₹39",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6,),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Use ₹3.1 Bonus",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Mega Event IPL - 2023",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Contest For Champion",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                ),
              ),
              Text(
                "Intense Competiton",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          ListView.builder(
            itemCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      SizedBox(height: 12,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "₹3,000,000",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Text(
                            "Guaranted\nPrize",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Container(
                            height: 9,
                            width:200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(9),bottomLeft: Radius.circular(9)),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xFFF8C745),
                                      Color(0xFFE77221),
                                    ]
                                )
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 9,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(9),bottomRight: Radius.circular(9)),
                                  color: Colors.black12
                              ),
                            ),
                          ),

                        ],
                      ),
                      SizedBox(height: 6,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "15,00,000 tickets left",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 12
                            ),
                          ),
                          Text(
                            "Upto 500 Entries",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w400,
                                fontSize: 11
                            ),
                          ),
                          Text(
                            "18,000 Total Tickets",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 12
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 21,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                // color: Colors.red,
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "1",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 6),
                                      child: Text(
                                        "st",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 6,),
                              Text(
                                "First Prize\n₹2,15,000",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 40,
                            width: 95,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                border: Border.all(width: 1.5,color: Color(0xFF00A3FF))
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "PRIZE LIST",
                              style: TextStyle(
                                  color: Color(0xFF00A3FF),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 115,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(9),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "₹39",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6,),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Use ₹3.1 Bonus",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Mega Event IPL - 2023",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
