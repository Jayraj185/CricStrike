import 'package:cricstreak/Screens/ARScreen/View/ARPage.dart';
import 'package:cricstreak/Screens/BatPage/View/BatPage.dart';
import 'package:cricstreak/Screens/BowlScreen/View/BowlPage.dart';
import 'package:cricstreak/Screens/CreateTeam/model/PlayerDetailModel.dart';
import 'package:cricstreak/Screens/WKScreen/View/WKPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreateTeamController extends GetxController
{
  RxList<Widget> Screens = [
    WKPage(),
    BatPage(),
    ARPage(),
    BowlPage(),
  ].obs;
  RxList<PlayerDetailModel> WKList = <PlayerDetailModel>[
    PlayerDetailModel(name: "Dinesh Kartik",teamName: "RCB",selected: false,avgPts: 90,selBy: 74,credit: 8.5,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/13.png"),
    PlayerDetailModel(name: "Anuj Rawat",teamName: "RCB",selected: false,avgPts: 76,selBy: 15,credit: 6.5,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/534.png"),
    PlayerDetailModel(name: "Finn Allen",teamName: "RCB",selected: false,avgPts: 70,selBy: 10,credit: 5.5,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/595.png"),
    PlayerDetailModel(name: "MS Dhoni",teamName: "CSK",selected: false,avgPts: 130,selBy: 40,credit: 9.5,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/57.png"),
    PlayerDetailModel(name: "Devon Conway",teamName: "CSK",selected: false,avgPts: 290,selBy: 93,credit: 9.5,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/601.png"),
  ].obs;
  RxList<PlayerDetailModel> BatList = <PlayerDetailModel>[
    PlayerDetailModel(name: "Virat Kohli",teamName: "RCB",selected: false,avgPts: 380,selBy: 98,credit: 9.5,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/2.png"),
    PlayerDetailModel(name: "Faf Du Plessis",teamName: "RCB",selected: false,avgPts: 375,selBy: 97,credit: 9.5,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/94.png"),
    PlayerDetailModel(name: "Rajat Patidar",teamName: "RCB",selected: false,avgPts: 90,selBy: 10,credit: 5.5,imageUrl: ""),
    PlayerDetailModel(name: "Suyash S Prabhudessai",teamName: "RCB",selected: false,avgPts: 30,selBy: 5,credit: 5,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/598.png"),
    PlayerDetailModel(name: "Ruturaj Gaikwad",teamName: "CSK",selected: false,avgPts: 290,selBy: 93,credit: 9.5,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/102.png"),
    PlayerDetailModel(name: "Ambati Rayudu",teamName: "CSK",selected: false,avgPts: 120,selBy: 60,credit: 8,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/60.png"),
    PlayerDetailModel(name: "Ajinkya Rahane",teamName: "CSK",selected: false,avgPts: 130,selBy: 64,credit: 8,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/44.png"),
    PlayerDetailModel(name: "Shaik Rasheed",teamName: "CSK",selected: false,avgPts: 0,selBy: 0,credit: 0,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/778.png"),
    PlayerDetailModel(name: "Subhranshu Senapati",teamName: "CSK",selected: false,avgPts: 0,selBy: 0,credit: 0,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/971.png"),
  ].obs;
  RxList<PlayerDetailModel> ARList = <PlayerDetailModel>[
    PlayerDetailModel(name: "Glenn Maxwell",teamName: "RCB",selected: false,avgPts: 380,selBy: 98,credit: 9.5,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/28.png"),
    PlayerDetailModel(name: "Shahbaz Ahmad",teamName: "RCB",selected: false,avgPts: 75,selBy: 57,credit: 6.5,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/523.png"),
    PlayerDetailModel(name: "Mahipal Lomror",teamName: "RCB",selected: false,avgPts: 90,selBy: 50,credit: 6.5,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/184.png"),
    PlayerDetailModel(name: "David Willey",teamName: "RCB",selected: false,avgPts: 120,selBy: 65,credit: 7,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/90.png"),
    PlayerDetailModel(name: "Manoj Bhandage",teamName: "RCB",selected: false,avgPts: 0,selBy: 0,credit: 0,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/102.png"),
    PlayerDetailModel(name: "Michael Bracewell",teamName: "RCB",selected: false,avgPts: 120,selBy: 60,credit: 8,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/1465.png"),
    PlayerDetailModel(name: "Will Jacks",teamName: "RCB",selected: false,avgPts: 120,selBy: 60,credit: 8,imageUrl: ""),
    PlayerDetailModel(name: "Wayne Parnell",teamName: "RCB",selected: false,avgPts: 120,selBy: 60,credit: 8,imageUrl: ""),
    PlayerDetailModel(name: "Sonu Yadav",teamName: "RCB",selected: false,avgPts: 0,selBy: 0,credit: 0,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/1940.png"),
    PlayerDetailModel(name: "Ravindra Jadeja",teamName: "CSK",selected: false,avgPts: 210,selBy: 89,credit: 8.5,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/46.png"),
    PlayerDetailModel(name: "Ben Stokes",teamName: "CSK",selected: false,avgPts: 0,selBy: 0,credit: 0,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/177.png"),
    PlayerDetailModel(name: "Dwaine Pretorius",teamName: "CSK",selected: false,avgPts: 0,selBy: 0,credit: 0,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/289.png"),
    PlayerDetailModel(name: "Moeen Ali",teamName: "CSK",selected: false,avgPts: 190,selBy: 60,credit: 8,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/206.png"),
    PlayerDetailModel(name: "Rajvardhan Hangargekar",teamName: "CSK",selected: false,avgPts: 0,selBy: 0,credit: 0,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/783.png"),
    PlayerDetailModel(name: "Nishant Sindhu",teamName: "CSK",selected: false,avgPts: 0,selBy: 0,credit: 0,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/791.png"),
    PlayerDetailModel(name: "Kyle Jamieson",teamName: "CSK",selected: false,avgPts: 0,selBy: 0,credit: 0,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/382.png"),
    PlayerDetailModel(name: "Mitchell Santner",teamName: "CSK",selected: false,avgPts: 30,selBy: 6,credit: 5,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/75.png"),
    PlayerDetailModel(name: "K. Bhagath Varma",teamName: "CSK",selected: false,avgPts: 0,selBy: 0,credit: 0,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/577.png"),
    PlayerDetailModel(name: "Ajay Mandal",teamName: "CSK",selected: false,avgPts: 0,selBy: 0,credit: 0,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/1931.png"),
    PlayerDetailModel(name: "Shivam Dube",teamName: "CSK",selected: false,avgPts: 230,selBy: 76,credit: 8,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/211.png"),
  ].obs;
  RxList<PlayerDetailModel> BowlList = <PlayerDetailModel>[
    PlayerDetailModel(name: "Harshal Patel",teamName: "RCB",selected: false,avgPts: 280,selBy: 80,credit: 9,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/114.png"),
    PlayerDetailModel(name: "Karn Sharma",teamName: "RCB",selected: false,avgPts: 230,selBy: 57,credit: 7.5,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/98.png"),
    PlayerDetailModel(name: "Mohammed Siraj",teamName: "RCB",selected: false,avgPts: 310,selBy: 90,credit: 9.5,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/63.png"),
    PlayerDetailModel(name: "Josh Hazlewood",teamName: "RCB",selected: false,avgPts: 30,selBy: 5,credit: 6,imageUrl: ""),
    PlayerDetailModel(name: "Siddarth Kaul",teamName: "CSK",selected: false,avgPts: 9,selBy: 3,credit: 5,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/64.png"),
    PlayerDetailModel(name: "Akash Deep",teamName: "CSK",selected: false,avgPts: 60,selBy: 5,credit: 5,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/1007.png"),
    PlayerDetailModel(name: "Wanindu Hasaranga",teamName: "CSK",selected: false,avgPts: 160,selBy: 45,credit: 8,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/377.png"),
    PlayerDetailModel(name: "Reece Topley",teamName: "CSK",selected: false,avgPts: 20,selBy: 20,credit: 5,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/574.png"),
    PlayerDetailModel(name: "Avinash Singh",teamName: "CSK",selected: false,avgPts: 0,selBy: 0,credit: 0,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/1939.png"),
    PlayerDetailModel(name: "Himanshu Sharma",teamName: "RCB",selected: false,avgPts: 0,selBy: 0,credit: 0,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/1568.png"),
    PlayerDetailModel(name: "Rajan Kumar",teamName: "RCB",selected: false,avgPts: 0,selBy: 0,credit: 05,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/1503.png"),
    PlayerDetailModel(name: "Vyshak Vijay Kumar",teamName: "RCB",selected: false,avgPts: 140,selBy: 65,credit: 6.5,imageUrl: ""),
    PlayerDetailModel(name: "Dipak Chahar",teamName: "CSK",selected: false,avgPts: 180,selBy: 85,credit: 9,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/91.png"),
    PlayerDetailModel(name: "Maheesh Theekshana",teamName: "CSK",selected: false,avgPts: 140,selBy: 60,credit: 8,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/629.png"),
    PlayerDetailModel(name: "Matheesha Pathirana",teamName: "CSK",selected: false,avgPts: 130,selBy: 64,credit: 8,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/1014.png"),
    PlayerDetailModel(name: "Mukesh Choudhary",teamName: "CSK",selected: false,avgPts: 0,selBy: 0,credit: 0,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/970.png"),
    PlayerDetailModel(name: "Prashant Solanki",teamName: "CSK",selected: false,avgPts: 0,selBy: 0,credit: 0,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/972.png"),
    PlayerDetailModel(name: "Simarjeet Singh",teamName: "CSK",selected: false,avgPts: 0,selBy: 0,credit: 0,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/622.png"),
    PlayerDetailModel(name: "Tushar Deshpande",teamName: "CSK",selected: false,avgPts: 120,selBy: 60,credit: 6.5,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/539.png"),
    PlayerDetailModel(name: "Akash Singh",teamName: "CSK",selected: false,avgPts: 0,selBy: 0,credit: 0,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/535.png"),
    PlayerDetailModel(name: "Sisanda Magala",teamName: "CSK",selected: false,avgPts: 0,selBy: 0,credit: 0,imageUrl: "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/745.png"),
  ].obs;
  RxMap<String,List> FinalTeam = {
    "WK" : [],
    "BAT" : [],
    "AR" : [],
    "BOWL" : [],
  }.obs;
  RxMap<String,int> count = {
    "WK" : 1,
    "BAT" : 1,
    "AR" : 1,
    "BOWL" : 1,
  }.obs;
  RxInt PlayerCount = 0.obs;
}