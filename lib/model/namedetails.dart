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
    return {
      'name': name
    };
  }

  static List<Namedetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<Namedetails>() : json.map((value) => new Namedetails.fromJson(value)).toList();
  }

  static Map<String, Namedetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Namedetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Namedetails.fromJson(value));
    }
    return map;
  }
}

