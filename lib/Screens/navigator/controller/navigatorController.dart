import 'package:cricstreak/Screens/HomeScreen/view/HomePage.dart';
import 'package:cricstreak/Screens/cricket/view/cricketpage.dart';
import 'package:cricstreak/Screens/game/view/gamepage.dart';
import 'package:cricstreak/Screens/news/view/newsPage.dart';
import 'package:get/get.dart';

import '../../wallet/view/walletpage.dart';

class NavigatorController extends GetxController {
  RxInt NavigatIndex = 0.obs;
  RxList Screens = [
    HomePage(),
    CricketPage(),
    NewsPage(),
    WalletPage(),
    GamePage(),
  ].obs;
}
