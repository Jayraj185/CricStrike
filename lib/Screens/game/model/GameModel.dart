class GameModel {
  String? name, image, link, playres;

  GameModel({this.name, this.image, this.link, this.playres});

  GameModel fromJson(Map m1){
    return GameModel(name: m1['name'], image: m1['image'], link: m1['link'], playres: m1['player']);
  }
}
