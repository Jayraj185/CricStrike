import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Wallet",
          ),

          backgroundColor: const Color(0xff021852),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Wallet Cash Balance",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                          const SizedBox(height: 3),
                          const Text(
                            "₹120.00",
                            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
                          )
                        ],
                      ),
                      const Spacer(),
                      Image.asset(
                        "assets/image/historybutton.png",
                        width: 110,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Unplayed",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                          const SizedBox(height: 3),
                          const Text(
                            "₹0.00",
                            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
                          )
                        ],
                      ),
                      const Spacer(),
                      Image.asset(
                        "assets/image/addcashbutton.png",
                        width: 120,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Withdraw",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                          const SizedBox(height: 3),
                          const Text(
                            "₹0.00",
                            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
                          )
                        ],
                      ),
                      const Spacer(),
                      Image.asset(
                        "assets/image/withdrawbutton.png",
                        width: 120,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Earn Bonus",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                          const SizedBox(height: 3),
                          const Text(
                            "₹0.00",
                            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
                          )
                        ],
                      ),
                      const Spacer(),
                      Image.asset(
                        "assets/image/earnbonusbutton.png",
                        width: 120,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Wallet Offer",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      const SizedBox(width: 16,),
                      Image.asset(
                        "assets/image/add1.png",
                        height: 80,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        "assets/image/add1.png",
                        height: 80,
                      ),
                      const SizedBox(width: 16,),

                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      const Text(
                        "Loan Request",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.red,
                              backgroundImage: AssetImage("assets/image/LR_1.png"),
                              radius: 18,
                            ),
                            Container(
                              child: const Text(
                                "  ₹5 KA ₹10",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 25,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.black54, width: 1.6)),
                              alignment: Alignment.center,
                              child: const Text(
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
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.red,
                              backgroundImage: AssetImage("assets/image/LR_2.png"),
                              radius: 18,
                            ),

                            const Text(
                              "  ₹5 KA ₹6",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),

                            Container(
                              height: 25,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.black54, width: 1.6)),
                              alignment: Alignment.center,
                              child: const Text(
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
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.red,
                              backgroundImage: AssetImage("assets/image/LR_3.png"),
                              radius: 18,
                            ),
                            Container(
                              child: const Text(
                                "  ₹10 KA ₹10",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 25,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.black54, width: 1.6)),
                              alignment: Alignment.center,
                              child: const Text(
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
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.black54, width: 1.6)),
                          alignment: Alignment.center,
                          child: const Text(
                            "VIEW ALL REQUESTS",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          ),
                        ),
                      ),
                    ],
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
