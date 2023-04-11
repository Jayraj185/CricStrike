import 'package:cricstreak/Screens/HomeScreen/view/HomePage.dart';
import 'package:get/get.dart';

class NavigatorController extends GetxController
{
  RxInt NavigatIndex = 0.obs;
  RxList Screens = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ].obs;
}