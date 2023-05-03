import 'package:cricstreak/Screens/game/model/GameModel.dart';
import 'package:get/get.dart';

class GameController extends GetxController
{
  RxList<GameModel> GameList = <GameModel>[
    GameModel(name: "The Impossible Quizmas", link: "https://poki.com/en/g/the-impossible-quiz", playres: "215", image: "https://red-ball4.com/data/image/the-impossible-quizmas.png"),
    GameModel(name: "8 Ball Pool", link: "https://poki.com/en/g/8-ball-pool-with-buddies", playres: "684", image: "https://is4-ssl.mzstatic.com/image/thumb/Purple115/v4/00/11/71/00117100-b56a-d41f-5112-d3a02e6f2acc/AppIcon-1x_U007emarketing-0-7-0-0-85-220.png/1024x1024bb.png"),
    GameModel(name: "Rummy", link: "https://poki.com/en/g/rummy", playres: "121", image: "https://www.rupeecasinos.in/wp-content/uploads/2019/06/paplu-card-game.jpg"),
    GameModel(name: "Super Star Car", link: "https://poki.com/en/g/super-star-car", playres: "512", image: "https://img.poki.com/cdn-cgi/image/quality=78,width=600,height=600,fit=cover,g=0.5x0.5,f=auto/8376e3a632b640cd3e9ca53b9963000a.jpeg"),
    GameModel(name: "Penalty Shooters 2", link: "https://poki.com/en/g/penalty-shooters-2", playres: "300", image: "https://img.poki.com/cdn-cgi/image/quality=78,width=600,height=600,fit=cover,g=0.5x0.5,f=auto/7b6f54cf-e1b2-4e69-a84e-1c1f49e54c53.png"),
    GameModel(name: "Cricket World Cup", link: "https://poki.com/en/g/cricket-world-cup", playres: "1085", image: "https://images-eu.ssl-images-amazon.com/images/I/81AtrBWhvDL.png"),
    GameModel(name: "Subway Surfers", link: "https://poki.com/en/g/subway-surfers", playres: "915", image: "https://3.bp.blogspot.com/-Vuhu4nZIDw0/VfZv9AzzQwI/AAAAAAAAAeo/hAj38TYt7aA/s1600/Subway%2BSurfers%2BLogo.png"),
    GameModel(name: "Battle Forces", link: "https://poki.com/en/g/battle-forces", playres: "1500", image: "https://img.poki.com/cdn-cgi/image/quality=78,width=600,height=600,fit=cover,f=auto/9f66976567f12c4e5c3a8736b4ff7a9a.png"),
  ].obs;
}
