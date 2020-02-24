part of openapi.api;



class MatchingApi {
  final ApiClient apiClient;

  MatchingApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Matching Service with HTTP info returned
  ///
  /// Matching API matches or snaps given GPS points to the road network in the most plausible way.  Please note the request might result multiple sub-traces.  Large jumps in the timestamps (&gt; 60s) or improbable transitions lead to trace splits if a complete matching could not be found. The algorithm might not be able to match all points. Outliers are removed if they can not be matched successfully.
  Future<Response> matchingWithHttpInfo(String coordinates, { String generateHints, String approaches, String exclude, String bearings, String radiuses, String steps, String annotations, String geometries, String overview, String timestamps, String gaps, String tidy, String waypoints }) async {
    Object postBody;

    // verify required params are set
    if(coordinates == null) {
     throw ApiException(400, "Missing required param: coordinates");
    }

    // create path and map variables
    String path = "/matching/driving/{coordinates}".replaceAll("{format}","json").replaceAll("{" + "coordinates" + "}", coordinates.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(generateHints != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "generate_hints", generateHints));
    }
    if(approaches != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "approaches", approaches));
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
    if(timestamps != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "timestamps", timestamps));
    }
    if(gaps != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "gaps", gaps));
    }
    if(tidy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "tidy", tidy));
    }
    if(waypoints != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "waypoints", waypoints));
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

  /// Matching Service
  ///
  /// Matching API matches or snaps given GPS points to the road network in the most plausible way.  Please note the request might result multiple sub-traces.  Large jumps in the timestamps (&gt; 60s) or improbable transitions lead to trace splits if a complete matching could not be found. The algorithm might not be able to match all points. Outliers are removed if they can not be matched successfully.
  Future<DirectionsMatching> matching(String coordinates, { String generateHints, String approaches, String exclude, String bearings, String radiuses, String steps, String annotations, String geometries, String overview, String timestamps, String gaps, String tidy, String waypoints }) async {
    Response response = await matchingWithHttpInfo(coordinates,  generateHints: generateHints, approaches: approaches, exclude: exclude, bearings: bearings, radiuses: radiuses, steps: steps, annotations: annotations, geometries: geometries, overview: overview, timestamps: timestamps, gaps: gaps, tidy: tidy, waypoints: waypoints );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DirectionsMatching') as DirectionsMatching;
    } else {
      return null;
    }
  }

}
