# openapi.api.ReverseApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://eu1.locationiq.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reverse**](ReverseApi.md#reverse) | **GET** /reverse.php | Reverse Geocoding


# **reverse**
> Location reverse(lat, lon, format, normalizecity, addressdetails, acceptLanguage, namedetails, extratags, statecode)

Reverse Geocoding

Reverse geocoding is the process of converting a coordinate or location (latitude, longitude) to a readable address or place name. This permits the identification of nearby street addresses, places, and/or area subdivisions such as a neighborhood, county, state, or country.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: key
//openapi.api.Configuration.apiKey{'key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'key'} = "Bearer";

var api_instance = new ReverseApi();
var lat = 17.24; // num | Latitude of the location to generate an address for.
var lon = 74.25; // num | Longitude of the location to generate an address for.
var format = "json"; // String | Format to geocode. Only JSON supported for SDKs
var normalizecity = 1; // int | Normalizes village to city level data to city
var addressdetails = 1; // int | Include a breakdown of the address into elements. Defaults to 1.
var acceptLanguage = "en"; // String | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native
var namedetails = 0; // int | Include a list of alternative names in the results. These may include language variants, references, operator and brand.
var extratags = 0; // int | Include additional information in the result if available, e.g. wikipedia link, opening hours.
var statecode = 0; // int | Adds state or province code when available to the statecode key inside the address element. Currently supported for addresses in the USA, Canada and Australia. Defaults to 0

try { 
    var result = api_instance.reverse(lat, lon, format, normalizecity, addressdetails, acceptLanguage, namedetails, extratags, statecode);
    print(result);
} catch (e) {
    print("Exception when calling ReverseApi->reverse: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **num**| Latitude of the location to generate an address for. | 
 **lon** | **num**| Longitude of the location to generate an address for. | 
 **format** | **String**| Format to geocode. Only JSON supported for SDKs | 
 **normalizecity** | **int**| Normalizes village to city level data to city | 
 **addressdetails** | **int**| Include a breakdown of the address into elements. Defaults to 1. | [optional] [default to 1]
 **acceptLanguage** | **String**| Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional] 
 **namedetails** | **int**| Include a list of alternative names in the results. These may include language variants, references, operator and brand. | [optional] 
 **extratags** | **int**| Include additional information in the result if available, e.g. wikipedia link, opening hours. | [optional] 
 **statecode** | **int**| Adds state or province code when available to the statecode key inside the address element. Currently supported for addresses in the USA, Canada and Australia. Defaults to 0 | [optional] 

### Return type

[**Location**](Location.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

