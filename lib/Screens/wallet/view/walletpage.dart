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
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
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
          "Wallet Offer",textAlign: TextAlign.start,
          style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w500,
              fontSize: 16),
        ),
        SizedBox(
          height: 15,
        ),
        Image.asset("assets/image/add1.png",height:80,),

      ],
    );
  }
}
