part of openapi.api;

class DirectionsMatching {
  
  String code = null;
  
  List<Object> tracepoints = [];
  
  List<Object> matchings = [];
  DirectionsMatching();

  @override
  String toString() {
    return 'DirectionsMatching[code=$code, tracepoints=$tracepoints, matchings=$matchings, ]';
  }

  DirectionsMatching.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = json['code'];
    tracepoints = (json['tracepoints'] == null) ?
      null :
      Object.listFromJson(json['tracepoints']);
    matchings = (json['matchings'] == null) ?
      null :
      Object.listFromJson(json['matchings']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (code != null)
      json['code'] = code;
    if (tracepoints != null)
      json['tracepoints'] = tracepoints;
    if (matchings != null)
      json['matchings'] = matchings;
    return json;
  }

  static List<DirectionsMatching> listFromJson(List<dynamic> json) {
    return json == null ? List<DirectionsMatching>() : json.map((value) => DirectionsMatching.fromJson(value)).toList();
  }

  static Map<String, DirectionsMatching> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DirectionsMatching>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DirectionsMatching.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DirectionsMatching-objects as value to a dart map
  static Map<String, List<DirectionsMatching>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DirectionsMatching>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DirectionsMatching.listFromJson(value);
       });
     }
     return map;
  }
}

