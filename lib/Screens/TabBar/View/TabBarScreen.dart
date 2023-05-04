import 'package:cricstreak/Screens/Contests/view/ContestsPage.dart';
import 'package:cricstreak/Screens/My_Contests/view/MyContestsPage.dart';
import 'package:cricstreak/Screens/My_Teams/view/MyTeams.dart';
import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xff021852),
            title: Text(
              "RCB VS KKR",
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 6,),
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.notifications,color: Colors.white,size: 21,),
                ),
              )
            ],
            bottom: TabBar(
              indicatorColor: Color(0xFFEFD473),
              labelColor: Color(0xFFEFD473),
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
              unselectedLabelStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
              unselectedLabelColor: Colors.white,
              tabs: [
                Tab(text: "Contests",),
                Tab(text: "My Contests",),
                Tab(text: "My Teams",),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xD9021852),
                      Color(0xb3021852),
                      Color(0xd9021852),
                    ],
                  ),
                ),
                child: ContestsPage(),
              ),
              Container(
                height: double.infinity,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xD9021852),
                      Color(0xb3021852),
                      Color(0xd9021852),
                    ],
                  ),
                ),
                child: MyContestsPage(),
              ),
              Container(
                height: double.infinity,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xD9021852),
                      Color(0xb3021852),
                      Color(0xd9021852),
                    ],
                  ),
                ),
                child: MyTeamsPage(),
              ),
            ],
          )
        ),
      ),
    );
  }
}
