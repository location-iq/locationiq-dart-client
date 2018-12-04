part of openapi.api;

class Address {
  
  String houseNumber = null;
  
  String road = null;
  
  String residential = null;
  
  String borough = null;
  
  String neighbourhood = null;
  
  String quarter = null;
  
  String hamlet = null;
  
  String suburb = null;
  
  String island = null;
  
  String village = null;
  
  String town = null;
  
  String city = null;
  
  String cityDistrict = null;
  
  String county = null;
  
  String state = null;
  
  String stateDistrict = null;
  
  String postcode = null;
  
  String country = null;
  
  String countryCode = null;
  
  String stateCode = null;
  Address();

  @override
  String toString() {
    return 'Address[houseNumber=$houseNumber, road=$road, residential=$residential, borough=$borough, neighbourhood=$neighbourhood, quarter=$quarter, hamlet=$hamlet, suburb=$suburb, island=$island, village=$village, town=$town, city=$city, cityDistrict=$cityDistrict, county=$county, state=$state, stateDistrict=$stateDistrict, postcode=$postcode, country=$country, countryCode=$countryCode, stateCode=$stateCode, ]';
  }

  Address.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    houseNumber = json['house_number'];
    road = json['road'];
    residential = json['residential'];
    borough = json['borough'];
    neighbourhood = json['neighbourhood'];
    quarter = json['quarter'];
    hamlet = json['hamlet'];
    suburb = json['suburb'];
    island = json['island'];
    village = json['village'];
    town = json['town'];
    city = json['city'];
    cityDistrict = json['city_district'];
    county = json['county'];
    state = json['state'];
    stateDistrict = json['state_district'];
    postcode = json['postcode'];
    country = json['country'];
    countryCode = json['country_code'];
    stateCode = json['state_code'];
  }

  Map<String, dynamic> toJson() {
    return {
      'house_number': houseNumber,
      'road': road,
      'residential': residential,
      'borough': borough,
      'neighbourhood': neighbourhood,
      'quarter': quarter,
      'hamlet': hamlet,
      'suburb': suburb,
      'island': island,
      'village': village,
      'town': town,
      'city': city,
      'city_district': cityDistrict,
      'county': county,
      'state': state,
      'state_district': stateDistrict,
      'postcode': postcode,
      'country': country,
      'country_code': countryCode,
      'state_code': stateCode
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

