import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for AutocompleteApi
void main() {
  var instance = AutocompleteApi();

  group('tests for AutocompleteApi', () {
    // The Autocomplete API is a variant of the Search API that returns place predictions in response to an HTTP request.  The request specifies a textual search string and optional geographic bounds.  The service can be used to provide autocomplete functionality for text-based geographic searches, by returning places such as businesses, addresses and points of interest as a user types. The Autocomplete API can match on full words as well as substrings. Applications can therefore send queries as the user types, to provide on-the-fly place predictions.
    //
    //Future<List<Object>> autocomplete(String q, int normalizecity, { int limit, String viewbox, int bounded, String countrycodes, String acceptLanguage, String tag }) async 
    test('test autocomplete', () async {
      // TODO
    });

  });
}
