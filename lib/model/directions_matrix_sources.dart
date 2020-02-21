part of openapi.api;

class DirectionsMatrixSources {
  
  num distance = null;
  
  List<num> location = [];
  
  String name = null;
  DirectionsMatrixSources();

  @override
  String toString() {
    return 'DirectionsMatrixSources[distance=$distance, location=$location, name=$name, ]';
  }

  DirectionsMatrixSources.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    distance = json['distance'];
    location = (json['location'] == null) ?
      null :
      (json['location'] as List).cast<num>();
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (distance != null)
      json['distance'] = distance;
    if (location != null)
      json['location'] = location;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<DirectionsMatrixSources> listFromJson(List<dynamic> json) {
    return json == null ? List<DirectionsMatrixSources>() : json.map((value) => DirectionsMatrixSources.fromJson(value)).toList();
  }

  static Map<String, DirectionsMatrixSources> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DirectionsMatrixSources>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DirectionsMatrixSources.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DirectionsMatrixSources-objects as value to a dart map
  static Map<String, List<DirectionsMatrixSources>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DirectionsMatrixSources>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DirectionsMatrixSources.listFromJson(value);
       });
     }
     return map;
  }
}

