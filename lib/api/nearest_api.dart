part of openapi.api;



class NearestApi {
  final ApiClient apiClient;

  NearestApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Nearest Service with HTTP info returned
  ///
  /// Snaps a coordinate to the street network and returns the nearest n matches. Where coordinates only supports a single {longitude},{latitude} entry.
  Future<Response> nearestWithHttpInfo(String coordinates, { String generateHints, String exclude, String bearings, String radiuses, String approaches, int number }) async {
    Object postBody;

    // verify required params are set
    if(coordinates == null) {
     throw ApiException(400, "Missing required param: coordinates");
    }

    // create path and map variables
    String path = "/nearest/driving/{coordinates}".replaceAll("{format}","json").replaceAll("{" + "coordinates" + "}", coordinates.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(generateHints != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "generate_hints", generateHints));
    }
    if(exclude != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "exclude", exclude));
    }
    if(bearings != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "bearings", bearings));
    }
    if(radiuses != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "radiuses", radiuses));
    }
    if(approaches != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "approaches", approaches));
    }
    if(number != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "number", number));
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

  /// Nearest Service
  ///
  /// Snaps a coordinate to the street network and returns the nearest n matches. Where coordinates only supports a single {longitude},{latitude} entry.
  Future<DirectionsNearest> nearest(String coordinates, { String generateHints, String exclude, String bearings, String radiuses, String approaches, int number }) async {
    Response response = await nearestWithHttpInfo(coordinates,  generateHints: generateHints, exclude: exclude, bearings: bearings, radiuses: radiuses, approaches: approaches, number: number );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DirectionsNearest') as DirectionsNearest;
    } else {
      return null;
    }
  }

}
