part of openapi.api;

class DirectionsNearestWaypoints {
  
  List<num> nodes = [];
  
  num distance = null;
  
  List<num> location = [];
  
  String name = null;
  DirectionsNearestWaypoints();

  @override
  String toString() {
    return 'DirectionsNearestWaypoints[nodes=$nodes, distance=$distance, location=$location, name=$name, ]';
  }

  DirectionsNearestWaypoints.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    nodes = (json['nodes'] == null) ?
      null :
      (json['nodes'] as List).cast<num>();
    distance = json['distance'];
    location = (json['location'] == null) ?
      null :
      (json['location'] as List).cast<num>();
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (nodes != null)
      json['nodes'] = nodes;
    if (distance != null)
      json['distance'] = distance;
    if (location != null)
      json['location'] = location;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<DirectionsNearestWaypoints> listFromJson(List<dynamic> json) {
    return json == null ? List<DirectionsNearestWaypoints>() : json.map((value) => DirectionsNearestWaypoints.fromJson(value)).toList();
  }

  static Map<String, DirectionsNearestWaypoints> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DirectionsNearestWaypoints>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DirectionsNearestWaypoints.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DirectionsNearestWaypoints-objects as value to a dart map
  static Map<String, List<DirectionsNearestWaypoints>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DirectionsNearestWaypoints>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DirectionsNearestWaypoints.listFromJson(value);
       });
     }
     return map;
  }
}

