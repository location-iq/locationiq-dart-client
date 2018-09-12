part of openapi.api;

class Location {
  
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
  Location();

  @override
  String toString() {
    return 'Location[placeId=$placeId, licence=$licence, osmType=$osmType, osmId=$osmId, boundingbox=$boundingbox, lat=$lat, lon=$lon, displayName=$displayName, class_=$class_, type=$type, importance=$importance, address=$address, namedetails=$namedetails, ]';
  }

  Location.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    placeId = json['place_id'];
    licence = json['licence'];
    osmType = json['osm_type'];
    osmId = json['osm_id'];
    boundingbox = (json['boundingbox'] as List).map((item) => item as String).toList();
    lat = json['lat'];
    lon = json['lon'];
    displayName = json['display_name'];
    class_ = json['class'];
    type = json['type'];
    importance = json['importance'];
    address = new Address.fromJson(json['address']);
    namedetails = new Namedetails.fromJson(json['namedetails']);
  }

  Map<String, dynamic> toJson() {
    return {
      'place_id': placeId,
      'licence': licence,
      'osm_type': osmType,
      'osm_id': osmId,
      'boundingbox': boundingbox,
      'lat': lat,
      'lon': lon,
      'display_name': displayName,
      'class': class_,
      'type': type,
      'importance': importance,
      'address': address,
      'namedetails': namedetails
    };
  }

  static List<Location> listFromJson(List<dynamic> json) {
    return json == null ? new List<Location>() : json.map((value) => new Location.fromJson(value)).toList();
  }

  static Map<String, Location> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Location>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Location.fromJson(value));
    }
    return map;
  }
}

