part of openapi.api;



class SearchApi {
  final ApiClient apiClient;

  SearchApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Forward Geocoding
  ///
  /// The Search API allows converting addresses, such as a street address, into geographic coordinates (latitude and longitude). These coordinates can serve various use-cases, from placing markers on a map to helping algorithms determine nearby bus stops. This process is also known as Forward Geocoding.
  Future<List<Location>> search(String q, String format, int normalizecity, { int addressdetails, String viewbox, int bounded, int limit, String acceptLanguage, String countrycodes, int namedetails, int dedupe, int extratags }) async {
    Object postBody = null;

    // verify required params are set
    if(q == null) {
     throw new ApiException(400, "Missing required param: q");
    }
    if(format == null) {
     throw new ApiException(400, "Missing required param: format");
    }
    if(normalizecity == null) {
     throw new ApiException(400, "Missing required param: normalizecity");
    }

    // create path and map variables
    String path = "/search.php".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "q", q));
      queryParams.addAll(_convertParametersForCollectionFormat("", "format", format));
      queryParams.addAll(_convertParametersForCollectionFormat("", "normalizecity", normalizecity));
    if(addressdetails != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "addressdetails", addressdetails));
    }
    if(viewbox != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "viewbox", viewbox));
    }
    if(bounded != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "bounded", bounded));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(acceptLanguage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "accept-language", acceptLanguage));
    }
    if(countrycodes != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "countrycodes", countrycodes));
    }
    if(namedetails != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "namedetails", namedetails));
    }
    if(dedupe != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "dedupe", dedupe));
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
      return (apiClient.deserialize(response.body, 'List<Location>') as List).map((item) => item as Location).toList();
    } else {
      return null;
    }
  }
}
