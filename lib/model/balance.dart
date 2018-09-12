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
    balance = new Daybalance.fromJson(json['balance']);
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'balance': balance
    };
  }

  static List<Balance> listFromJson(List<dynamic> json) {
    return json == null ? new List<Balance>() : json.map((value) => new Balance.fromJson(value)).toList();
  }

  static Map<String, Balance> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Balance>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Balance.fromJson(value));
    }
    return map;
  }
}

