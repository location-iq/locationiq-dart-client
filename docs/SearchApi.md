# openapi.api.SearchApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://eu1.locationiq.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search**](SearchApi.md#search) | **GET** /search.php | Forward Geocoding


# **search**
> List<Location> search(q, format, normalizecity, addressdetails, viewbox, bounded, limit, acceptLanguage, countrycodes, namedetails, dedupe, extratags)

Forward Geocoding

The Search API allows converting addresses, such as a street address, into geographic coordinates (latitude and longitude). These coordinates can serve various use-cases, from placing markers on a map to helping algorithms determine nearby bus stops. This process is also known as Forward Geocoding.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: key
//openapi.api.Configuration.apiKey{'key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'key'} = "Bearer";

var api_instance = new SearchApi();
var q = "Empire state building"; // String | Address to geocode
var format = "json"; // String | Format to geocode. Only JSON supported for SDKs
var normalizecity = 1; // int | For responses with no city value in the address section, the next available element in this order - city_district, locality, town, borough, municipality, village, hamlet, quarter, neighbourhood - from the address section will be normalized to city. Defaults to 1 for SDKs.
var addressdetails = 1; // int | Include a breakdown of the address into elements. Defaults to 0.
var viewbox = "-132.84908,47.69382,-70.44674,30.82531"; // String | The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option.
var bounded = 1; // int | Restrict the results to only items contained with the viewbox
var limit = 10; // int | Limit the number of returned results. Default is 10.
var acceptLanguage = "en"; // String | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native
var countrycodes = "us"; // String | Limit search to a list of countries.
var namedetails = 1; // int | Include a list of alternative names in the results. These may include language variants, references, operator and brand.
var dedupe = 1; // int | Sometimes you have several objects in OSM identifying the same place or object in reality. The simplest case is a street being split in many different OSM ways due to different characteristics. Nominatim will attempt to detect such duplicates and only return one match; this is controlled by the dedupe parameter which defaults to 1. Since the limit is, for reasons of efficiency, enforced before and not after de-duplicating, it is possible that de-duplicating leaves you with less results than requested.
var extratags = 0; // int | Include additional information in the result if available, e.g. wikipedia link, opening hours.

try { 
    var result = api_instance.search(q, format, normalizecity, addressdetails, viewbox, bounded, limit, acceptLanguage, countrycodes, namedetails, dedupe, extratags);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->search: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Address to geocode | 
 **format** | **String**| Format to geocode. Only JSON supported for SDKs | 
 **normalizecity** | **int**| For responses with no city value in the address section, the next available element in this order - city_district, locality, town, borough, municipality, village, hamlet, quarter, neighbourhood - from the address section will be normalized to city. Defaults to 1 for SDKs. | 
 **addressdetails** | **int**| Include a breakdown of the address into elements. Defaults to 0. | [optional] 
 **viewbox** | **String**| The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. | [optional] 
 **bounded** | **int**| Restrict the results to only items contained with the viewbox | [optional] 
 **limit** | **int**| Limit the number of returned results. Default is 10. | [optional] [default to 10]
 **acceptLanguage** | **String**| Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional] 
 **countrycodes** | **String**| Limit search to a list of countries. | [optional] 
 **namedetails** | **int**| Include a list of alternative names in the results. These may include language variants, references, operator and brand. | [optional] 
 **dedupe** | **int**| Sometimes you have several objects in OSM identifying the same place or object in reality. The simplest case is a street being split in many different OSM ways due to different characteristics. Nominatim will attempt to detect such duplicates and only return one match; this is controlled by the dedupe parameter which defaults to 1. Since the limit is, for reasons of efficiency, enforced before and not after de-duplicating, it is possible that de-duplicating leaves you with less results than requested. | [optional] 
 **extratags** | **int**| Include additional information in the result if available, e.g. wikipedia link, opening hours. | [optional] 

### Return type

[**List<Location>**](Location.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

