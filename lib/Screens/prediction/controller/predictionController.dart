import 'package:get/get.dart';

class PredictionController extends GetxController{

RxInt previvewIndex = 0.obs;
  RxList  dataList = [].obs;
  RxList<Map> allrounder = <Map>[].obs;
  RxList<Map> batsman = <Map>[].obs;
  RxList<Map> bowler = <Map>[].obs;
}