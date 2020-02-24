import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for MatrixApi
void main() {
  var instance = MatrixApi();

  group('tests for MatrixApi', () {
    // Matrix Service
    //
    // Computes duration of the fastest route between all pairs of supplied coordinates. Returns the durations or distances or both between the coordinate pairs. Note that the distances are not the shortest distance between two coordinates, but rather the distances of the fastest routes.
    //
    //Future<DirectionsMatrix> matrix(String coordinates, { String bearings, String radiuses, String generateHints, String approaches, String exclude, String annotations, int sources, int destinations, num fallbackSpeed, String fallbackCoordinate }) async 
    test('test matrix', () async {
      // TODO
    });

  });
}
