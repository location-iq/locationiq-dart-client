# openapi.api.BalanceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://eu1.locationiq.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**balance**](BalanceApi.md#balance) | **GET** /balance.php | 


# **balance**
> Balance balance()



The Balance API provides a count of request credits left in the user's account for the day. Balance is reset at midnight UTC everyday (00:00 UTC).

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: key
//defaultApiClient.getAuthentication<ApiKeyAuth>('key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('key').apiKeyPrefix = 'Bearer';

var api_instance = BalanceApi();

try { 
    var result = api_instance.balance();
    print(result);
} catch (e) {
    print("Exception when calling BalanceApi->balance: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Balance**](Balance.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

