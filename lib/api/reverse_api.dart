part of openapi.api;



class ReverseApi {
  final ApiClient apiClient;

  ReverseApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Reverse Geocoding with HTTP info returned
  ///
  /// Reverse geocoding is the process of converting a coordinate or location (latitude, longitude) to a readable address or place name. This permits the identification of nearby street addresses, places, and/or area subdivisions such as a neighborhood, county, state, or country.
  Future<Response> reverseWithHttpInfo(num lat, num lon, String format, int normalizecity, { int addressdetails, String acceptLanguage, int namedetails, int extratags, int statecode, int showdistance, int postaladdress }) async {
    Object postBody;

    // verify required params are set
    if(lat == null) {
     throw ApiException(400, "Missing required param: lat");
    }
    if(lon == null) {
     throw ApiException(400, "Missing required param: lon");
    }
    if(format == null) {
     throw ApiException(400, "Missing required param: format");
    }
    if(normalizecity == null) {
     throw ApiException(400, "Missing required param: normalizecity");
    }

    // create path and map variables
    String path = "/reverse.php".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "lat", lat));
      queryParams.addAll(_convertParametersForCollectionFormat("", "lon", lon));
      queryParams.addAll(_convertParametersForCollectionFormat("", "format", format));
      queryParams.addAll(_convertParametersForCollectionFormat("", "normalizecity", normalizecity));
    if(addressdetails != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "addressdetails", addressdetails));
    }
    if(acceptLanguage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "accept-language", acceptLanguage));
    }
    if(namedetails != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "namedetails", namedetails));
    }
    if(extratags != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "extratags", extratags));
    }
    if(statecode != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "statecode", statecode));
    }
    if(showdistance != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "showdistance", showdistance));
    }
    if(postaladdress != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "postaladdress", postaladdress));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["key"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Reverse Geocoding
  ///
  /// Reverse geocoding is the process of converting a coordinate or location (latitude, longitude) to a readable address or place name. This permits the identification of nearby street addresses, places, and/or area subdivisions such as a neighborhood, county, state, or country.
  Future<Location> reverse(num lat, num lon, String format, int normalizecity, { int addressdetails, String acceptLanguage, int namedetails, int extratags, int statecode, int showdistance, int postaladdress }) async {
    Response response = await reverseWithHttpInfo(lat, lon, format, normalizecity,  addressdetails: addressdetails, acceptLanguage: acceptLanguage, namedetails: namedetails, extratags: extratags, statecode: statecode, showdistance: showdistance, postaladdress: postaladdress );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Location') as Location;
    } else {
      return null;
    }
  }

}
