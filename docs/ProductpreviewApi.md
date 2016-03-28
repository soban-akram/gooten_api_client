# GootenApiClient::ProductpreviewApi

All URIs are relative to *https://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**p_ost_productpreview**](ProductpreviewApi.md#p_ost_productpreview) | **POST** /productpreview/ | Submit an image (or images) to be rendered into a product preview.




# **p_ost_productpreview**
> ProductPreviewResponse p_ost_productpreview(product_preview_request)

Submit an image (or images) to be rendered into a product preview.

Submit an image (or images) to be rendered into a product preview.

### Example
```ruby

api = GootenApiClient::ProductpreviewApi.new

product_preview_request = GootenApiClient::ProductPreviewRequest.new # [ProductPreviewRequest] Request detailing the operation needing completed


begin
  result = api.p_ost_productpreview(product_preview_request)
rescue GootenApiClient::ApiError => e
  puts "Exception when calling p_ost_productpreview: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_preview_request** | [**ProductPreviewRequest**](ProductPreviewRequest.md)| Request detailing the operation needing completed | 


### Return type

[**ProductPreviewResponse**](ProductPreviewResponse.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json





