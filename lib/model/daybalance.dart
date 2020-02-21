part of openapi.api;

class Daybalance {
  
  int day = null;
  
  int bonus = null;
  Daybalance();

  @override
  String toString() {
    return 'Daybalance[day=$day, bonus=$bonus, ]';
  }

  Daybalance.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    day = json['day'];
    bonus = json['bonus'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (day != null)
      json['day'] = day;
    if (bonus != null)
      json['bonus'] = bonus;
    return json;
  }

  static List<Daybalance> listFromJson(List<dynamic> json) {
    return json == null ? List<Daybalance>() : json.map((value) => Daybalance.fromJson(value)).toList();
  }

  static Map<String, Daybalance> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Daybalance>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Daybalance.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Daybalance-objects as value to a dart map
  static Map<String, List<Daybalance>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Daybalance>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Daybalance.listFromJson(value);
       });
     }
     return map;
  }
}

