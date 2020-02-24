# openapi.api.MatrixApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://eu1.locationiq.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**matrix**](MatrixApi.md#matrix) | **GET** /matrix/driving/{coordinates} | Matrix Service


# **matrix**
> DirectionsMatrix matrix(coordinates, bearings, radiuses, generateHints, approaches, exclude, annotations, sources, destinations, fallbackSpeed, fallbackCoordinate)

Matrix Service

Computes duration of the fastest route between all pairs of supplied coordinates. Returns the durations or distances or both between the coordinate pairs. Note that the distances are not the shortest distance between two coordinates, but rather the distances of the fastest routes.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: key
//defaultApiClient.getAuthentication<ApiKeyAuth>('key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('key').apiKeyPrefix = 'Bearer';

var api_instance = MatrixApi();
var coordinates = "-0.16102,51.523854;-0.15797,51.52326;-0.161593,51.522550"; // String | String of format {longitude},{latitude};{longitude},{latitude}[;{longitude},{latitude} ...] or polyline({polyline}) or polyline6({polyline6}). polyline follows Google's polyline format with precision 5
var bearings = "10,20;40,30;30,9"; // String | Limits the search to segments with given bearing in degrees towards true north in clockwise direction. List of positive integer pairs separated by semi-colon and bearings array should be equal to length of coordinate array. Input Value :- {bearing};{bearing}[;{bearing} ...] Bearing follows the following format : bearing {value},{range} integer 0 .. 360,integer 0 .. 180
var radiuses = "500;200;300"; // String | Limits the search to given radius in meters Radiuses array length should be same as coordinates array, eaach value separated by semi-colon. Input Value - {radius};{radius}[;{radius} ...] Radius has following format :- double >= 0 or unlimited (default)
var generateHints = "false"; // String | Adds a Hint to the response which can be used in subsequent requests, see hints parameter. Input Value - true (default), false Format - Base64 String
var approaches = "curb;curb;curb"; // String | Keep waypoints on curb side. Input Value - {approach};{approach}[;{approach} ...] Format - curb or unrestricted (default)
var exclude = "toll"; // String | Additive list of classes to avoid, order does not matter. input Value - {class}[,{class}] Format - A class name determined by the profile or none.
var annotations = "distance"; // String | Returns additional metadata for each coordinate along the route geometry.  [ true, false (default), nodes, distance, duration, datasources, weight, speed ]
var sources = 0; // int | Use location with given index as source. [ {index};{index}[;{index} ...] or all (default) ] => index  0 <= integer < #locations
var destinations = 2; // int | Use location with given index as destination. [ {index};{index}[;{index} ...] or all (default) ]
var fallbackSpeed = 25.65; // num | If no route found between a source/destination pair, calculate the as-the-crow-flies distance,  then use this speed to estimate duration. double > 0
var fallbackCoordinate = "snapped"; // String | When using a fallback_speed, use the user-supplied coordinate (input), or the snapped location (snapped) for calculating distances. [ input (default), or snapped ]

try { 
    var result = api_instance.matrix(coordinates, bearings, radiuses, generateHints, approaches, exclude, annotations, sources, destinations, fallbackSpeed, fallbackCoordinate);
    print(result);
} catch (e) {
    print("Exception when calling MatrixApi->matrix: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coordinates** | **String**| String of format {longitude},{latitude};{longitude},{latitude}[;{longitude},{latitude} ...] or polyline({polyline}) or polyline6({polyline6}). polyline follows Google&#39;s polyline format with precision 5 | [default to null]
 **bearings** | **String**| Limits the search to segments with given bearing in degrees towards true north in clockwise direction. List of positive integer pairs separated by semi-colon and bearings array should be equal to length of coordinate array. Input Value :- {bearing};{bearing}[;{bearing} ...] Bearing follows the following format : bearing {value},{range} integer 0 .. 360,integer 0 .. 180 | [optional] [default to null]
 **radiuses** | **String**| Limits the search to given radius in meters Radiuses array length should be same as coordinates array, eaach value separated by semi-colon. Input Value - {radius};{radius}[;{radius} ...] Radius has following format :- double &gt;&#x3D; 0 or unlimited (default) | [optional] [default to null]
 **generateHints** | **String**| Adds a Hint to the response which can be used in subsequent requests, see hints parameter. Input Value - true (default), false Format - Base64 String | [optional] [default to null]
 **approaches** | **String**| Keep waypoints on curb side. Input Value - {approach};{approach}[;{approach} ...] Format - curb or unrestricted (default) | [optional] [default to null]
 **exclude** | **String**| Additive list of classes to avoid, order does not matter. input Value - {class}[,{class}] Format - A class name determined by the profile or none. | [optional] [default to null]
 **annotations** | **String**| Returns additional metadata for each coordinate along the route geometry.  [ true, false (default), nodes, distance, duration, datasources, weight, speed ] | [optional] [default to null]
 **sources** | **int**| Use location with given index as source. [ {index};{index}[;{index} ...] or all (default) ] &#x3D;&gt; index  0 &lt;&#x3D; integer &lt; #locations | [optional] [default to null]
 **destinations** | **int**| Use location with given index as destination. [ {index};{index}[;{index} ...] or all (default) ] | [optional] [default to null]
 **fallbackSpeed** | **num**| If no route found between a source/destination pair, calculate the as-the-crow-flies distance,  then use this speed to estimate duration. double &gt; 0 | [optional] [default to null]
 **fallbackCoordinate** | **String**| When using a fallback_speed, use the user-supplied coordinate (input), or the snapped location (snapped) for calculating distances. [ input (default), or snapped ] | [optional] [default to &quot;&quot;input&quot;&quot;]

### Return type

[**DirectionsMatrix**](DirectionsMatrix.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

