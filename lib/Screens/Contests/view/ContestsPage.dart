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
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
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
                  child: const Text(
                    "Enter Contest Code",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 15,),
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
                      const Text(
                        "Create Contest",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16
                        ),
                      ),
                      const Icon(Icons.add,color: Colors.white,)
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Mega Event",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),
              ),
              const Text(
                "Get Ready for Mega Winnigs",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  const SizedBox(height: 12,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "₹3,000,000",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      const Text(
                        "Guaranted\nPrize",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6,),
                  Row(
                    children: [
                      Container(
                        height: 9,
                        width: 215,
                        decoration: const BoxDecoration(
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
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(9),bottomRight: Radius.circular(9)),
                              color: Colors.black12
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "15,00,000 tickets left",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 12
                        ),
                      ),
                      const Text(
                        "Upto 500 Entries",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w400,
                            fontSize: 11
                        ),
                      ),
                      const Text(
                        "18,000 Total Tickets",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 12
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 21,),
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
                                const Text(
                                  "1",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                const Padding(
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
                          const SizedBox(width: 6,),
                          const Text(
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
                            border: Border.all(width: 1.5,color: const Color(0xFF00A3FF))
                        ),
                        alignment: Alignment.center,
                        child: const Text(
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
                        child: const Text(
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
                  const SizedBox(height: 6,),
                  const Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Use ₹3.1 Bonus",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  const Align(
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
          const SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Low-Entry Contest",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                ),
              ),
              const Text(
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
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      const SizedBox(height: 12,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "₹3,000,000",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          const Text(
                            "Guaranted\nPrize",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6,),
                      Row(
                        children: [
                          Container(
                            height: 9,
                            width: 215,
                            decoration: const BoxDecoration(
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
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(9),bottomRight: Radius.circular(9)),
                                  color: Colors.black12
                              ),
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(height: 6,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "15,00,000 tickets left",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 12
                            ),
                          ),
                          const Text(
                            "Upto 500 Entries",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w400,
                                fontSize: 11
                            ),
                          ),
                          const Text(
                            "18,000 Total Tickets",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 12
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 21,),
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
                                    const Text(
                                      "1",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    const Padding(
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
                              const SizedBox(width: 6,),
                              const Text(
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
                                border: Border.all(width: 1.5,color: const Color(0xFF00A3FF))
                            ),
                            alignment: Alignment.center,
                            child: const Text(
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
                            child: const Text(
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
                      const SizedBox(height: 6,),
                      const Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Use ₹3.1 Bonus",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15,),
                      const Align(
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
          const SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Contest For Champion",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                ),
              ),
              const Text(
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
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      const SizedBox(height: 12,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "₹3,000,000",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          const Text(
                            "Guaranted\nPrize",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6,),
                      Row(
                        children: [
                          Container(
                            height: 9,
                            width:200,
                            decoration: const BoxDecoration(
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
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(9),bottomRight: Radius.circular(9)),
                                  color: Colors.black12
                              ),
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(height: 6,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "15,00,000 tickets left",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 12
                            ),
                          ),
                          const Text(
                            "Upto 500 Entries",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w400,
                                fontSize: 11
                            ),
                          ),
                          const Text(
                            "18,000 Total Tickets",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 12
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 21,),
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
                                    const Text(
                                      "1",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    const Padding(
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
                              const SizedBox(width: 6,),
                              const Text(
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
                                border: Border.all(width: 1.5,color: const Color(0xFF00A3FF))
                            ),
                            alignment: Alignment.center,
                            child: const Text(
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
                            child: const Text(
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
                      const SizedBox(height: 6,),
                      const Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Use ₹3.1 Bonus",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15,),
                      const Align(
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
