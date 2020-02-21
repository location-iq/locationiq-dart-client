part of openapi.api;

class Namedetails {
  
  String name = null;
  Namedetails();

  @override
  String toString() {
    return 'Namedetails[name=$name, ]';
  }

  Namedetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<Namedetails> listFromJson(List<dynamic> json) {
    return json == null ? List<Namedetails>() : json.map((value) => Namedetails.fromJson(value)).toList();
  }

  static Map<String, Namedetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Namedetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Namedetails.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Namedetails-objects as value to a dart map
  static Map<String, List<Namedetails>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Namedetails>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Namedetails.listFromJson(value);
       });
     }
     return map;
  }
}

