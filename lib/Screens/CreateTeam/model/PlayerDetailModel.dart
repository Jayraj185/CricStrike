/// Name : "Virat Kohli"
/// Team_Name : "RCB"
/// Image_Url : "fgvbhjn"
/// Selected : false
/// Avg_Pts : 90
/// Sel_By : 90
/// Credit : 90

class PlayerDetailModel {
  PlayerDetailModel({
      String? name, 
      String? teamName, 
      String? imageUrl, 
      bool? selected, 
      num? avgPts, 
      num? selBy, 
      num? credit,}){
    _name = name;
    _teamName = teamName;
    _imageUrl = imageUrl;
    _selected = selected;
    _avgPts = avgPts;
    _selBy = selBy;
    _credit = credit;
}

  PlayerDetailModel.fromJson(dynamic json) {
    _name = json['Name'];
    _teamName = json['Team_Name'];
    _imageUrl = json['Image_Url'];
    _selected = json['Selected'];
    _avgPts = json['Avg_Pts'];
    _selBy = json['Sel_By'];
    _credit = json['Credit'];
  }
  String? _name;
  String? _teamName;
  String? _imageUrl;
  bool? _selected;
  num? _avgPts;
  num? _selBy;
  num? _credit;
PlayerDetailModel copyWith({  String? name,
  String? teamName,
  String? imageUrl,
  bool? selected,
  num? avgPts,
  num? selBy,
  num? credit,
}) => PlayerDetailModel(  name: name ?? _name,
  teamName: teamName ?? _teamName,
  imageUrl: imageUrl ?? _imageUrl,
  selected: selected ?? _selected,
  avgPts: avgPts ?? _avgPts,
  selBy: selBy ?? _selBy,
  credit: credit ?? _credit,
);
  String? get name => _name;
  String? get teamName => _teamName;
  String? get imageUrl => _imageUrl;
  bool? get selected => _selected;
  num? get avgPts => _avgPts;
  num? get selBy => _selBy;
  num? get credit => _credit;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Name'] = _name;
    map['Team_Name'] = _teamName;
    map['Image_Url'] = _imageUrl;
    map['Selected'] = _selected;
    map['Avg_Pts'] = _avgPts;
    map['Sel_By'] = _selBy;
    map['Credit'] = _credit;
    return map;
  }

}