part of openapi.api;



class DirectionsApi {
  final ApiClient apiClient;

  DirectionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Directions Service with HTTP info returned
  ///
  /// Finds the fastest route between coordinates in the supplied order.
  Future<Response> directionsWithHttpInfo(String coordinates, { String bearings, String radiuses, String generateHints, String approaches, String exclude, num alternatives, String steps, String annotations, String geometries, String overview, String continueStraight }) async {
    Object postBody;

    // verify required params are set
    if(coordinates == null) {
     throw ApiException(400, "Missing required param: coordinates");
    }

    // create path and map variables
    String path = "/directions/driving/{coordinates}".replaceAll("{format}","json").replaceAll("{" + "coordinates" + "}", coordinates.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(bearings != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "bearings", bearings));
    }
    if(radiuses != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "radiuses", radiuses));
    }
    if(generateHints != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "generate_hints", generateHints));
    }
    if(approaches != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "approaches", approaches));
    }
    if(exclude != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "exclude", exclude));
    }
    if(alternatives != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "alternatives", alternatives));
    }
    if(steps != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "steps", steps));
    }
    if(annotations != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "annotations", annotations));
    }
    if(geometries != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "geometries", geometries));
    }
    if(overview != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "overview", overview));
    }
    if(continueStraight != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "continue_straight", continueStraight));
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

  /// Directions Service
  ///
  /// Finds the fastest route between coordinates in the supplied order.
  Future<DirectionsDirections> directions(String coordinates, { String bearings, String radiuses, String generateHints, String approaches, String exclude, num alternatives, String steps, String annotations, String geometries, String overview, String continueStraight }) async {
    Response response = await directionsWithHttpInfo(coordinates,  bearings: bearings, radiuses: radiuses, generateHints: generateHints, approaches: approaches, exclude: exclude, alternatives: alternatives, steps: steps, annotations: annotations, geometries: geometries, overview: overview, continueStraight: continueStraight );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DirectionsDirections') as DirectionsDirections;
    } else {
      return null;
    }
  }

}
