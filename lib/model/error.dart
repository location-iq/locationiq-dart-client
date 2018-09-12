part of openapi.api;

class Error {
  
  String error = null;
  Error();

  @override
  String toString() {
    return 'Error[error=$error, ]';
  }

  Error.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    return {
      'error': error
    };
  }

  static List<Error> listFromJson(List<dynamic> json) {
    return json == null ? new List<Error>() : json.map((value) => new Error.fromJson(value)).toList();
  }

  static Map<String, Error> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Error>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Error.fromJson(value));
    }
    return map;
  }
}

