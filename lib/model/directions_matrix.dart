part of openapi.api;

class DirectionsMatrix {
  
  String code = null;
  
  List<num> distances = [];
  
  List<num> fallbackSpeedCells = [];
  
  List<DirectionsMatrixSources> sources = [];
  
  List<DirectionsMatrixSources> destinations = [];
  DirectionsMatrix();

  @override
  String toString() {
    return 'DirectionsMatrix[code=$code, distances=$distances, fallbackSpeedCells=$fallbackSpeedCells, sources=$sources, destinations=$destinations, ]';
  }

  DirectionsMatrix.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = json['code'];
    distances = (json['distances'] == null) ?
      null :
      (json['distances'] as List).cast<num>();
    fallbackSpeedCells = (json['fallback_speed_cells'] == null) ?
      null :
      (json['fallback_speed_cells'] as List).cast<num>();
    sources = (json['sources'] == null) ?
      null :
      DirectionsMatrixSources.listFromJson(json['sources']);
    destinations = (json['destinations'] == null) ?
      null :
      DirectionsMatrixSources.listFromJson(json['destinations']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (code != null)
      json['code'] = code;
    if (distances != null)
      json['distances'] = distances;
    if (fallbackSpeedCells != null)
      json['fallback_speed_cells'] = fallbackSpeedCells;
    if (sources != null)
      json['sources'] = sources;
    if (destinations != null)
      json['destinations'] = destinations;
    return json;
  }

  static List<DirectionsMatrix> listFromJson(List<dynamic> json) {
    return json == null ? List<DirectionsMatrix>() : json.map((value) => DirectionsMatrix.fromJson(value)).toList();
  }

  static Map<String, DirectionsMatrix> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DirectionsMatrix>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DirectionsMatrix.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DirectionsMatrix-objects as value to a dart map
  static Map<String, List<DirectionsMatrix>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DirectionsMatrix>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DirectionsMatrix.listFromJson(value);
       });
     }
     return map;
  }
}

