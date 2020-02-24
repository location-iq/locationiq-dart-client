part of openapi.api;

class DirectionsNearest {
  
  String code = null;
  
  List<DirectionsNearestWaypoints> waypoints = [];
  DirectionsNearest();

  @override
  String toString() {
    return 'DirectionsNearest[code=$code, waypoints=$waypoints, ]';
  }

  DirectionsNearest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = json['code'];
    waypoints = (json['waypoints'] == null) ?
      null :
      DirectionsNearestWaypoints.listFromJson(json['waypoints']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (code != null)
      json['code'] = code;
    if (waypoints != null)
      json['waypoints'] = waypoints;
    return json;
  }

  static List<DirectionsNearest> listFromJson(List<dynamic> json) {
    return json == null ? List<DirectionsNearest>() : json.map((value) => DirectionsNearest.fromJson(value)).toList();
  }

  static Map<String, DirectionsNearest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DirectionsNearest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DirectionsNearest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DirectionsNearest-objects as value to a dart map
  static Map<String, List<DirectionsNearest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DirectionsNearest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DirectionsNearest.listFromJson(value);
       });
     }
     return map;
  }
}

