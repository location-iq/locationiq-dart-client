import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for MatchingApi
void main() {
  var instance = MatchingApi();

  group('tests for MatchingApi', () {
    // Matching Service
    //
    // Matching API matches or snaps given GPS points to the road network in the most plausible way.  Please note the request might result multiple sub-traces.  Large jumps in the timestamps (> 60s) or improbable transitions lead to trace splits if a complete matching could not be found. The algorithm might not be able to match all points. Outliers are removed if they can not be matched successfully.
    //
    //Future<DirectionsMatching> matching(String coordinates, { String generateHints, String approaches, String exclude, String bearings, String radiuses, String steps, String annotations, String geometries, String overview, String timestamps, String gaps, String tidy, String waypoints }) async 
    test('test matching', () async {
      // TODO
    });

  });
}
