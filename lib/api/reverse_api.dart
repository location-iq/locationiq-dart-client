part of openapi.api;



class ReverseApi {
  final ApiClient apiClient;

  ReverseApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Reverse Geocoding
  ///
  /// Reverse geocoding is the process of converting a coordinate or location (latitude, longitude) to a readable address or place name. This permits the identification of nearby street addresses, places, and/or area subdivisions such as a neighborhood, county, state, or country.
  Future<Location> reverse(num lat, num lon, String format, int normalizecity, { int addressdetails, String acceptLanguage, int namedetails, int extratags }) async {
    Object postBody = null;

    // verify required params are set
    if(lat == null) {
     throw new ApiException(400, "Missing required param: lat");
    }
    if(lon == null) {
     throw new ApiException(400, "Missing required param: lon");
    }
    if(format == null) {
     throw new ApiException(400, "Missing required param: format");
    }
    if(normalizecity == null) {
     throw new ApiException(400, "Missing required param: normalizecity");
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

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["key"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
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

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'Location') as Location;
    } else {
      return null;
    }
  }
}
