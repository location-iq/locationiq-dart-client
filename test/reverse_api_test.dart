import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for ReverseApi
void main() {
  var instance = ReverseApi();

  group('tests for ReverseApi', () {
    // Reverse Geocoding
    //
    // Reverse geocoding is the process of converting a coordinate or location (latitude, longitude) to a readable address or place name. This permits the identification of nearby street addresses, places, and/or area subdivisions such as a neighborhood, county, state, or country.
    //
    //Future<Location> reverse(num lat, num lon, String format, int normalizecity, { int addressdetails, String acceptLanguage, int namedetails, int extratags, int statecode, int showdistance, int postaladdress }) async 
    test('test reverse', () async {
      // TODO
    });

  });
}
