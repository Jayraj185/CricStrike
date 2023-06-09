/// firstName : "Virat"
/// lastName : "Kohli"
/// teamName : "RCB"
/// selected : false
/// avgPts : 0.0
/// selBy : 0.0
/// credit : 9.5
/// point : 0.0
/// color : "0xff"
/// captain : false
/// vicecaptain : false
/// capSelby : 0.0
/// vicecapSelby : 0.0
/// imageUrl : "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/2.png"

class PlayerDetailModel {
  PlayerDetailModel({
    String? firstName,
    String? lastName,
    String? teamName,
    bool? selected,
    num? avgPts,
    num? selBy,
    num? credit,
    num? point,
    String? color,
    bool? captain,
    bool? vicecaptain,
    num? capSelby,
    num? vicecapSelby,
    String? imageUrl,}){
    _firstName = firstName;
    _lastName = lastName;
    _teamName = teamName;
    _selected = selected;
    _avgPts = avgPts;
    _selBy = selBy;
    _credit = credit;
    _point = point;
    _color = color;
    _captain = captain;
    _vicecaptain = vicecaptain;
    _capSelby = capSelby;
    _vicecapSelby = vicecapSelby;
    _imageUrl = imageUrl;
  }

  PlayerDetailModel.fromJson(dynamic json) {
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _teamName = json['teamName'];
    _selected = json['selected'];
    _avgPts = json['avgPts'];
    _selBy = json['selBy'];
    _credit = json['credit'];
    _point = json['point'];
    _color = json['color'];
    _captain = json['captain'];
    _vicecaptain = json['vicecaptain'];
    _capSelby = json['capSelby'];
    _vicecapSelby = json['vicecapSelby'];
    _imageUrl = json['imageUrl'];
  }
  String? _firstName;
  String? _lastName;
  String? _teamName;
  bool? _selected;
  num? _avgPts;
  num? _selBy;
  num? _credit;
  num? _point;
  String? _color;
  bool? _captain;
  bool? _vicecaptain;
  num? _capSelby;
  num? _vicecapSelby;
  String? _imageUrl;
  PlayerDetailModel copyWith({  String? firstName,
    String? lastName,
    String? teamName,
    bool? selected,
    num? avgPts,
    num? selBy,
    num? credit,
    num? point,
    String? color,
    bool? captain,
    bool? vicecaptain,
    num? capSelby,
    num? vicecapSelby,
    String? imageUrl,
  }) => PlayerDetailModel(  firstName: firstName ?? _firstName,
    lastName: lastName ?? _lastName,
    teamName: teamName ?? _teamName,
    selected: selected ?? _selected,
    avgPts: avgPts ?? _avgPts,
    selBy: selBy ?? _selBy,
    credit: credit ?? _credit,
    point: point ?? _point,
    color: color ?? _color,
    captain: captain ?? _captain,
    vicecaptain: vicecaptain ?? _vicecaptain,
    capSelby: capSelby ?? _capSelby,
    vicecapSelby: vicecapSelby ?? _vicecapSelby,
    imageUrl: imageUrl ?? _imageUrl,
  );
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get teamName => _teamName;
  bool? get selected => _selected;
  num? get avgPts => _avgPts;
  num? get selBy => _selBy;
  num? get credit => _credit;
  num? get point => _point;
  String? get color => _color;
  bool? get captain => _captain;
  bool? get vicecaptain => _vicecaptain;
  num? get capSelby => _capSelby;
  num? get vicecapSelby => _vicecapSelby;
  String? get imageUrl => _imageUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    map['teamName'] = _teamName;
    map['selected'] = _selected;
    map['avgPts'] = _avgPts;
    map['selBy'] = _selBy;
    map['credit'] = _credit;
    map['point'] = _point;
    map['color'] = _color;
    map['captain'] = _captain;
    map['vicecaptain'] = _vicecaptain;
    map['capSelby'] = _capSelby;
    map['vicecapSelby'] = _vicecapSelby;
    map['imageUrl'] = _imageUrl;
    return map;
  }

}