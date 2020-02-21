import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for SearchApi
void main() {
  var instance = SearchApi();

  group('tests for SearchApi', () {
    // Forward Geocoding
    //
    // The Search API allows converting addresses, such as a street address, into geographic coordinates (latitude and longitude). These coordinates can serve various use-cases, from placing markers on a map to helping algorithms determine nearby bus stops. This process is also known as Forward Geocoding.
    //
    //Future<List<Location>> search(String q, String format, int normalizecity, { int addressdetails, String viewbox, int bounded, int limit, String acceptLanguage, String countrycodes, int namedetails, int dedupe, int extratags, int statecode, int matchquality, int postaladdress }) async 
    test('test search', () async {
      // TODO
    });

  });
}
