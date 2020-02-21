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
    Map <String, dynamic> json = {};
    if (houseNumber != null)
      json['house_number'] = houseNumber;
    if (road != null)
      json['road'] = road;
    if (residential != null)
      json['residential'] = residential;
    if (borough != null)
      json['borough'] = borough;
    if (neighbourhood != null)
      json['neighbourhood'] = neighbourhood;
    if (quarter != null)
      json['quarter'] = quarter;
    if (hamlet != null)
      json['hamlet'] = hamlet;
    if (suburb != null)
      json['suburb'] = suburb;
    if (island != null)
      json['island'] = island;
    if (village != null)
      json['village'] = village;
    if (town != null)
      json['town'] = town;
    if (city != null)
      json['city'] = city;
    if (cityDistrict != null)
      json['city_district'] = cityDistrict;
    if (county != null)
      json['county'] = county;
    if (state != null)
      json['state'] = state;
    if (stateDistrict != null)
      json['state_district'] = stateDistrict;
    if (postcode != null)
      json['postcode'] = postcode;
    if (country != null)
      json['country'] = country;
    if (countryCode != null)
      json['country_code'] = countryCode;
    if (stateCode != null)
      json['state_code'] = stateCode;
    return json;
  }

  static List<Address> listFromJson(List<dynamic> json) {
    return json == null ? List<Address>() : json.map((value) => Address.fromJson(value)).toList();
  }

  static Map<String, Address> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Address>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Address.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Address-objects as value to a dart map
  static Map<String, List<Address>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Address>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Address.listFromJson(value);
       });
     }
     return map;
  }
}

