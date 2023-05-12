import 'package:cricstreak/Screens/CreateTeam/view/CreateTeamPage.dart';
import 'package:cricstreak/Screens/TabBar/View/TabBarScreen.dart';
import 'package:cricstreak/Screens/TeamPreview/view/TeamPreviewPage.dart';
import 'package:cricstreak/Screens/navigator/view/navigatorPage.dart';
import 'package:cricstreak/Screens/newsdetails/view/newsDetailsPage.dart';
import 'package:cricstreak/Screens/predictionpreviewpage/view/predictionpreviewPage.dart';
import 'package:cricstreak/Screens/wallet/view/walletpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xff021852), // navigation bar color
    statusBarColor: Color(0xff021852), // status bar color
  ));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => NavigatorPage(),
        'ndetail': (context) => NewsDetailPage(),
        'wallet': (context) => WalletPage(),
        'tabbar': (context) => TabBarScreen(),
        'team_Preview': (context) => TeamPreviewPage(),
        'create_Team': (context) => CreateTeamPage(),
        'pp': (context) => PredictionPreviewPage(),
      },
    ),
  );
}
