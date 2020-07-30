part of openapi.api;



class AutocompleteApi {
  final ApiClient apiClient;

  AutocompleteApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  ///  with HTTP info returned
  ///
  /// The Autocomplete API is a variant of the Search API that returns place predictions in response to an HTTP request.  The request specifies a textual search string and optional geographic bounds.  The service can be used to provide autocomplete functionality for text-based geographic searches, by returning places such as businesses, addresses and points of interest as a user types. The Autocomplete API can match on full words as well as substrings. Applications can therefore send queries as the user types, to provide on-the-fly place predictions.
  Future<Response> autocompleteWithHttpInfo(String q, int normalizecity, { int limit, String viewbox, int bounded, String countrycodes, String acceptLanguage, String tag }) async {
    Object postBody;

    // verify required params are set
    if(q == null) {
     throw ApiException(400, "Missing required param: q");
    }
    if(normalizecity == null) {
     throw ApiException(400, "Missing required param: normalizecity");
    }

    // create path and map variables
    String path = "/autocomplete.php".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "q", q));
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(viewbox != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "viewbox", viewbox));
    }
    if(bounded != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "bounded", bounded));
    }
    if(countrycodes != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "countrycodes", countrycodes));
    }
      queryParams.addAll(_convertParametersForCollectionFormat("", "normalizecity", normalizecity));
    if(acceptLanguage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "accept-language", acceptLanguage));
    }
    if(tag != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "tag", tag));
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

  /// 
  ///
  /// The Autocomplete API is a variant of the Search API that returns place predictions in response to an HTTP request.  The request specifies a textual search string and optional geographic bounds.  The service can be used to provide autocomplete functionality for text-based geographic searches, by returning places such as businesses, addresses and points of interest as a user types. The Autocomplete API can match on full words as well as substrings. Applications can therefore send queries as the user types, to provide on-the-fly place predictions.
  Future<List<Location>> autocomplete(String q, int normalizecity, { int limit, String viewbox, int bounded, String countrycodes, String acceptLanguage, String tag }) async {
    Response response = await autocompleteWithHttpInfo(q, normalizecity,  limit: limit, viewbox: viewbox, bounded: bounded, countrycodes: countrycodes, acceptLanguage: acceptLanguage, tag: tag );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Location>') as List).map((item) => item as Location).toList();
    } else {
      return null;
    }
  }

}
