import 'package:cricstreak/Screens/CreateTeam/view/CreateTeamPage.dart';
import 'package:cricstreak/Screens/TabBar/View/TabBarScreen.dart';
import 'package:cricstreak/Screens/TeamPreview/view/TeamPreviewPage.dart';
import 'package:cricstreak/Screens/navigator/view/navigatorPage.dart';
import 'package:cricstreak/Screens/newsdetails/view/newsDetailsPage.dart';
import 'package:cricstreak/Screens/otpScreen/view/otpScereen.dart';
import 'package:cricstreak/Screens/predictionpreviewpage/view/predictionpreviewPage.dart';
import 'package:cricstreak/Screens/sign_in/view/signInPage.dart';
import 'package:cricstreak/Screens/splashScreen/view/splashScreen.dart';
import 'package:cricstreak/Screens/wallet/view/walletpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xff021852), // navigation bar color
    statusBarColor: Color(0xff021852), // status bar color
  ));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        'sign_in': (context) => const SignInPage(),
        'otp': (context) => const OTPScreen(),
        'nav': (context) => const NavigatorPage(),
        'ndetail': (context) => const NewsDetailPage(),
        'wallet': (context) => const WalletPage(),
        'tabbar': (context) => const TabBarScreen(),
        'team_Preview': (context) => const TeamPreviewPage(),
        'create_Team': (context) => const CreateTeamPage(),
        'pp': (context) => const PredictionPreviewPage(),
      },
    ),
  );
}
