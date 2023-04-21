import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cricstreak/Utils/firehelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CricketPage extends StatefulWidget {
  const CricketPage({Key? key}) : super(key: key);

  @override
  State<CricketPage> createState() => _CricketPageState();
}

class _CricketPageState extends State<CricketPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          StreamBuilder(
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List l1 = [];
                DocumentSnapshot? docs = snapshot.data;
                var data = docs!.data();
                print("===================== $data");
                // for(var doc in docs.)
                //   {
                //     Map l2 = doc.data();
                //     l1.add(l2);
                //   }
                return ListView.builder(physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(top: 15, bottom: 0),

                      child: Column(
                        children: [
                          SizedBox(
                            height: 7,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                Text(
                                  "Ipl - 2023",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                Spacer(),
                                Text(
                                  "Live",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.notifications_none,
                                  size: 25,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                Text(
                                  "T1 name",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Spacer(),
                                Text(
                                  "T2 Name",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 45,
                                      child: Image.asset("assets/image/csk.png",fit: BoxFit.cover,),
                                    ),
                                    SizedBox(width: 5,),
                                    Text(
                                      "CSK",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 20,
                                        child: Image.asset("assets/image/clock.png",fit: BoxFit.cover,color: Colors.red,),
                                      ),
                                      Text(
                                        "1h 54min",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                //Spacer(),
                                Row(
                                  children: [
                                    Text(
                                      "RCB",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Container(
                                      height: 45,
                                      width: 45,
                                      child: Image.asset("assets/image/rcb.png",fit: BoxFit.cover,),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(height: 35,color: Colors.black12,
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                Text(
                                  "Rs.11 Lakh",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.live_tv,
                                  size: 25,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      //child: Text("${l1[index]}"),
                    );
                  },
                  itemCount: 4,
                );
              } else if (snapshot.hasError) {
                return Center(child: Text("${snapshot.error}"));
              }
              return const Center(child: CircularProgressIndicator());
            },
            stream: FireHelper.fireHelper.GetData(),
          )
        ],
      ),
    );
  }
}
