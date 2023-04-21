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
                          Row(
                            children: [
                              Text(
                                "   Ipl - 2023",
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
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text(
                                "   T1 name",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              Spacer(),
                              Text(
                                "T2 Name   ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),

                            ],
                          ),

                          Spacer(),
                          Container(height: 35,color: Colors.black12,
                            child: Row(
                              children: [
                                Text(
                                  "   Rs.11 Lakh",
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
                                SizedBox(
                                  width: 10,
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
                return Text("${snapshot.error}");
              }
              return CircularProgressIndicator();
            },
            stream: FireHelper.fireHelper.GetData(),
          )
        ],
      ),
    );
  }
}
