part of openapi.api;

class Location {
  
  num distance = null;
  
  String placeId = null;
  
  String licence = null;
  
  String osmType = null;
  
  String osmId = null;
  
  List<String> boundingbox = [];
  
  String lat = null;
  
  String lon = null;
  
  String displayName = null;
  
  String class_ = null;
  
  String type = null;
  
  num importance = null;
  
  Address address = null;
  
  Namedetails namedetails = null;
  
  Matchquality matchquality = null;
  Location();

  @override
  String toString() {
    return 'Location[distance=$distance, placeId=$placeId, licence=$licence, osmType=$osmType, osmId=$osmId, boundingbox=$boundingbox, lat=$lat, lon=$lon, displayName=$displayName, class_=$class_, type=$type, importance=$importance, address=$address, namedetails=$namedetails, matchquality=$matchquality, ]';
  }

  Location.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    distance = json['distance'];
    placeId = json['place_id'];
    licence = json['licence'];
    osmType = json['osm_type'];
    osmId = json['osm_id'];
    boundingbox = (json['boundingbox'] == null) ?
      null :
      (json['boundingbox'] as List).cast<String>();
    lat = json['lat'];
    lon = json['lon'];
    displayName = json['display_name'];
    class_ = json['class'];
    type = json['type'];
    importance = json['importance'];
    address = (json['address'] == null) ?
      null :
      Address.fromJson(json['address']);
    namedetails = (json['namedetails'] == null) ?
      null :
      Namedetails.fromJson(json['namedetails']);
    matchquality = (json['matchquality'] == null) ?
      null :
      Matchquality.fromJson(json['matchquality']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (distance != null)
      json['distance'] = distance;
    if (placeId != null)
      json['place_id'] = placeId;
    if (licence != null)
      json['licence'] = licence;
    if (osmType != null)
      json['osm_type'] = osmType;
    if (osmId != null)
      json['osm_id'] = osmId;
    if (boundingbox != null)
      json['boundingbox'] = boundingbox;
    if (lat != null)
      json['lat'] = lat;
    if (lon != null)
      json['lon'] = lon;
    if (displayName != null)
      json['display_name'] = displayName;
    if (class_ != null)
      json['class'] = class_;
    if (type != null)
      json['type'] = type;
    if (importance != null)
      json['importance'] = importance;
    if (address != null)
      json['address'] = address;
    if (namedetails != null)
      json['namedetails'] = namedetails;
    if (matchquality != null)
      json['matchquality'] = matchquality;
    return json;
  }

  static List<Location> listFromJson(List<dynamic> json) {
    return json == null ? List<Location>() : json.map((value) => Location.fromJson(value)).toList();
  }

  static Map<String, Location> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Location>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Location.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Location-objects as value to a dart map
  static Map<String, List<Location>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Location>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Location.listFromJson(value);
       });
     }
     return map;
  }
}

