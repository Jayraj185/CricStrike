import 'package:cricstreak/Screens/CreateTeam/model/PlayerDetailModel.dart';
import 'package:get/get.dart';

class TeamModel {
  RxList<PlayerDetailModel>? WK, AR, Bowl, Bat;

  TeamModel({this.AR, this.Bat, this.Bowl, this.WK});
}
