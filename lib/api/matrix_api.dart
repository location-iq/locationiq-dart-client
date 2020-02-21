part of openapi.api;



class MatrixApi {
  final ApiClient apiClient;

  MatrixApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Matrix Service with HTTP info returned
  ///
  /// Computes duration of the fastest route between all pairs of supplied coordinates. Returns the durations or distances or both between the coordinate pairs. Note that the distances are not the shortest distance between two coordinates, but rather the distances of the fastest routes.
  Future<Response> matrixWithHttpInfo(String coordinates, { String bearings, String radiuses, String generateHints, String approaches, String exclude, String annotations, int sources, int destinations, num fallbackSpeed, String fallbackCoordinate }) async {
    Object postBody;

    // verify required params are set
    if(coordinates == null) {
     throw ApiException(400, "Missing required param: coordinates");
    }

    // create path and map variables
    String path = "/matrix/driving/{coordinates}".replaceAll("{format}","json").replaceAll("{" + "coordinates" + "}", coordinates.toString());

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
    if(annotations != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "annotations", annotations));
    }
    if(sources != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sources", sources));
    }
    if(destinations != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "destinations", destinations));
    }
    if(fallbackSpeed != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "fallback_speed", fallbackSpeed));
    }
    if(fallbackCoordinate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "fallback_coordinate", fallbackCoordinate));
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

  /// Matrix Service
  ///
  /// Computes duration of the fastest route between all pairs of supplied coordinates. Returns the durations or distances or both between the coordinate pairs. Note that the distances are not the shortest distance between two coordinates, but rather the distances of the fastest routes.
  Future<DirectionsMatrix> matrix(String coordinates, { String bearings, String radiuses, String generateHints, String approaches, String exclude, String annotations, int sources, int destinations, num fallbackSpeed, String fallbackCoordinate }) async {
    Response response = await matrixWithHttpInfo(coordinates,  bearings: bearings, radiuses: radiuses, generateHints: generateHints, approaches: approaches, exclude: exclude, annotations: annotations, sources: sources, destinations: destinations, fallbackSpeed: fallbackSpeed, fallbackCoordinate: fallbackCoordinate );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DirectionsMatrix') as DirectionsMatrix;
    } else {
      return null;
    }
  }

}
