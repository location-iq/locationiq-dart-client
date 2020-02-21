part of openapi.api;

class Balance {
  
  String status = null;
  
  Daybalance balance = null;
  Balance();

  @override
  String toString() {
    return 'Balance[status=$status, balance=$balance, ]';
  }

  Balance.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    status = json['status'];
    balance = (json['balance'] == null) ?
      null :
      Daybalance.fromJson(json['balance']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (status != null)
      json['status'] = status;
    if (balance != null)
      json['balance'] = balance;
    return json;
  }

  static List<Balance> listFromJson(List<dynamic> json) {
    return json == null ? List<Balance>() : json.map((value) => Balance.fromJson(value)).toList();
  }

  static Map<String, Balance> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Balance>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Balance.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Balance-objects as value to a dart map
  static Map<String, List<Balance>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Balance>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Balance.listFromJson(value);
       });
     }
     return map;
  }
}

