part of openapi.api;

class Daybalance {
  
  int day = null;
  Daybalance();

  @override
  String toString() {
    return 'Daybalance[day=$day, ]';
  }

  Daybalance.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    day = json['day'];
  }

  Map<String, dynamic> toJson() {
    return {
      'day': day
    };
  }

  static List<Daybalance> listFromJson(List<dynamic> json) {
    return json == null ? new List<Daybalance>() : json.map((value) => new Daybalance.fromJson(value)).toList();
  }

  static Map<String, Daybalance> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Daybalance>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Daybalance.fromJson(value));
    }
    return map;
  }
}

