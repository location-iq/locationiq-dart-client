part of openapi.api;

class DirectionsDirections {
  
  String code = null;
  
  List<Object> waypoints = [];
  
  List<DirectionsDirectionsRoutes> routes = [];
  DirectionsDirections();

  @override
  String toString() {
    return 'DirectionsDirections[code=$code, waypoints=$waypoints, routes=$routes, ]';
  }

  DirectionsDirections.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = json['code'];
    waypoints = (json['waypoints'] == null) ?
      null :
      DirectionsDirections.listFromJson(json['waypoints']);
    routes = (json['routes'] == null) ?
      null :
      DirectionsDirectionsRoutes.listFromJson(json['routes']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (code != null)
      json['code'] = code;
    if (waypoints != null)
      json['waypoints'] = waypoints;
    if (routes != null)
      json['routes'] = routes;
    return json;
  }

  static List<DirectionsDirections> listFromJson(List<dynamic> json) {
    return json == null ? List<DirectionsDirections>() : json.map((value) => DirectionsDirections.fromJson(value)).toList();
  }

  static Map<String, DirectionsDirections> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DirectionsDirections>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DirectionsDirections.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DirectionsDirections-objects as value to a dart map
  static Map<String, List<DirectionsDirections>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DirectionsDirections>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DirectionsDirections.listFromJson(value);
       });
     }
     return map;
  }
}

