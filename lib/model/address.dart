part of openapi.api;

class Address {
  
  String houseNumber = null;
  
  String road = null;
  
  String residential = null;
  
  String village = null;
  
  String county = null;
  
  String state = null;
  
  String postcode = null;
  
  String country = null;
  
  String countryCode = null;
  
  String city = null;
  Address();

  @override
  String toString() {
    return 'Address[houseNumber=$houseNumber, road=$road, residential=$residential, village=$village, county=$county, state=$state, postcode=$postcode, country=$country, countryCode=$countryCode, city=$city, ]';
  }

  Address.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    houseNumber = json['house_number'];
    road = json['road'];
    residential = json['residential'];
    village = json['village'];
    county = json['county'];
    state = json['state'];
    postcode = json['postcode'];
    country = json['country'];
    countryCode = json['country_code'];
    city = json['city'];
  }

  Map<String, dynamic> toJson() {
    return {
      'house_number': houseNumber,
      'road': road,
      'residential': residential,
      'village': village,
      'county': county,
      'state': state,
      'postcode': postcode,
      'country': country,
      'country_code': countryCode,
      'city': city
    };
  }

  static List<Address> listFromJson(List<dynamic> json) {
    return json == null ? new List<Address>() : json.map((value) => new Address.fromJson(value)).toList();
  }

  static Map<String, Address> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Address>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Address.fromJson(value));
    }
    return map;
  }
}

