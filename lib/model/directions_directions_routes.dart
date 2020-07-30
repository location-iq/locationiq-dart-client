part of openapi.api;

class DirectionsDirectionsRoutes {
  
  List<Object> legs = [];
  
  String weightName = null;
  
  String geometry = null;
  
  num weight = null;
  
  num distance = null;
  
  num duration = null;
  DirectionsDirectionsRoutes();

  @override
  String toString() {
    return 'DirectionsDirectionsRoutes[legs=$legs, weightName=$weightName, geometry=$geometry, weight=$weight, distance=$distance, duration=$duration, ]';
  }

  DirectionsDirectionsRoutes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    legs = (json['legs'] == null) ?
      null :
      DirectionsDirectionsRoutes.listFromJson(json['legs']);
    weightName = json['weight_name'];
    geometry = json['geometry'];
    weight = json['weight'];
    distance = json['distance'];
    duration = json['duration'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (legs != null)
      json['legs'] = legs;
    if (weightName != null)
      json['weight_name'] = weightName;
    if (geometry != null)
      json['geometry'] = geometry;
    if (weight != null)
      json['weight'] = weight;
    if (distance != null)
      json['distance'] = distance;
    if (duration != null)
      json['duration'] = duration;
    return json;
  }

  static List<DirectionsDirectionsRoutes> listFromJson(List<dynamic> json) {
    return json == null ? List<DirectionsDirectionsRoutes>() : json.map((value) => DirectionsDirectionsRoutes.fromJson(value)).toList();
  }

  static Map<String, DirectionsDirectionsRoutes> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DirectionsDirectionsRoutes>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DirectionsDirectionsRoutes.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DirectionsDirectionsRoutes-objects as value to a dart map
  static Map<String, List<DirectionsDirectionsRoutes>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DirectionsDirectionsRoutes>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DirectionsDirectionsRoutes.listFromJson(value);
       });
     }
     return map;
  }
}

