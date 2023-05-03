import 'package:cricstreak/Screens/game/model/GameModel.dart';
import 'package:get/get.dart';

class GameController extends GetxController
{
  RxList<GameModel> GameList = <GameModel>[
    GameModel(name: "The Impossible Quizmas", link: "https://poki.com/en/g/the-impossible-quiz", playres: "215", image: "https://img.poki.com/cdn-cgi/image/quality=78,width=94,height=94,fit=cover,f=auto/1f039a07-7c20-4f04-8885-992c45a87f65.jpg"),
    GameModel(name: "Super Star Car", link: "https://poki.com/en/g/super-star-car", playres: "512", image: "https://img.poki.com/cdn-cgi/image/quality=78,width=94,height=94,fit=cover,f=auto/8376e3a632b640cd3e9ca53b9963000a.jpeg"),
    GameModel(name: "Penalty Shooters 2", link: "https://poki.com/en/g/penalty-shooters-2", playres: "300", image: "https://img.poki.com/cdn-cgi/image/quality=78,width=94,height=94,fit=cover,f=auto/7b6f54cf-e1b2-4e69-a84e-1c1f49e54c53.png"),
    GameModel(name: "Cricket World Cup", link: "https://poki.com/en/g/cricket-world-cup", playres: "1085", image: "https://img.poki.com/cdn-cgi/image/quality=78,width=94,height=94,fit=cover,f=auto/a9d84b22bc87dc97bcd8ca7a60893404.png"),
    GameModel(name: "Subway Surfers", link: "https://poki.com/en/g/subway-surfers", playres: "915", image: "https://img.poki.com/cdn-cgi/image/quality=78,width=40,height=40,fit=cover,f=auto/6e12359e00ab4ef326aa05c864e9a133.jpeg"),
    GameModel(name: "Battle Forces", link: "https://poki.com/en/g/battle-forces", playres: "1500", image: "https://img.poki.com/cdn-cgi/image/quality=78,width=94,height=94,fit=cover,f=auto/9f66976567f12c4e5c3a8736b4ff7a9a.png"),
  ].obs;
}
