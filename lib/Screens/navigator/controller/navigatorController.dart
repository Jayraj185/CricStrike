import 'package:cricstreak/Screens/HomeScreen/view/HomePage.dart';
import 'package:cricstreak/Screens/cricket/view/cricketpage.dart';
import 'package:get/get.dart';

class NavigatorController extends GetxController {
  RxInt NavigatIndex = 0.obs;
  RxList Screens = [
    HomePage(),
    CricketPage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ].obs;
}
