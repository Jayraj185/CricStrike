import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wallet Cash Balance",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                SizedBox(height: 3),
                Text(
                  "₹120.00",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
                )
              ],
            ),
            Spacer(),
            Image.asset(
              "assets/image/historybutton.png",
              width: 110,
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Unplayed",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                SizedBox(height: 3),
                Text(
                  "₹0.00",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
                )
              ],
            ),
            Spacer(),
            Image.asset(
              "assets/image/addcashbutton.png",
              width: 120,
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Withdraw",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                SizedBox(height: 3),
                Text(
                  "₹0.00",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
                )
              ],
            ),
            Spacer(),
            Image.asset(
              "assets/image/withdrawbutton.png",
              width: 120,
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Earn Bonus",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                SizedBox(height: 3),
                Text(
                  "₹0.00",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
                )
              ],
            ),
            Spacer(),
            Image.asset(
              "assets/image/earnbonusbutton.png",
              width: 120,
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "Wallet Offer",
          textAlign: TextAlign.start,
          style: TextStyle(
              color: Colors.black87, fontWeight: FontWeight.w500, fontSize: 18),
        ),
        SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              Image.asset(
                "assets/image/add1.png",
                height: 80,
              ),
              SizedBox(
                width: 15,
              ),
              Image.asset(
                "assets/image/add1.png",
                height: 80,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Text(
              "Loan Request",
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    backgroundImage: AssetImage("assets/image/LR_1.png"),
                    radius: 18,
                  ),
                  Container(
                    child: Text(
                      "  ₹5 KA ₹10",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 25,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black54, width: 1.6)),
                    alignment: Alignment.center,
                    child: Text(
                      "Detail",
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    backgroundImage: AssetImage("assets/image/LR_2.png"),
                    radius: 18,
                  ),

                  Text(
                    "  ₹5 KA ₹6",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),

                  Container(
                    height: 25,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black54, width: 1.6)),
                    alignment: Alignment.center,
                    child: Text(
                      "Detail",
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    backgroundImage: AssetImage("assets/image/LR_3.png"),
                    radius: 18,
                  ),
                  Container(
                    child: Text(
                      "  ₹10 KA ₹10",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 25,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black54, width: 1.6)),
                    alignment: Alignment.center,
                    child: Text(
                      "Detail",
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black54, width: 1.6)),
                alignment: Alignment.center,
                child: Text(
                  "VIEW ALL REQUESTS",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                      fontSize: 12),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
