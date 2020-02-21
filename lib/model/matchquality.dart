part of openapi.api;

class Matchquality {
  
  String matchcode = null;
  
  String matchtype = null;
  
  String matchlevel = null;
  Matchquality();

  @override
  String toString() {
    return 'Matchquality[matchcode=$matchcode, matchtype=$matchtype, matchlevel=$matchlevel, ]';
  }

  Matchquality.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    matchcode = json['matchcode'];
    matchtype = json['matchtype'];
    matchlevel = json['matchlevel'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (matchcode != null)
      json['matchcode'] = matchcode;
    if (matchtype != null)
      json['matchtype'] = matchtype;
    if (matchlevel != null)
      json['matchlevel'] = matchlevel;
    return json;
  }

  static List<Matchquality> listFromJson(List<dynamic> json) {
    return json == null ? List<Matchquality>() : json.map((value) => Matchquality.fromJson(value)).toList();
  }

  static Map<String, Matchquality> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Matchquality>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Matchquality.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Matchquality-objects as value to a dart map
  static Map<String, List<Matchquality>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Matchquality>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Matchquality.listFromJson(value);
       });
     }
     return map;
  }
}

