# GootenApiClient::ImagevalidationApi

All URIs are relative to *https://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**p_ost_imagevalidation**](ImagevalidationApi.md#p_ost_imagevalidation) | **POST** /imagevalidation/ | Submit image validation


# **p_ost_imagevalidation**
> ImageValidatorResult p_ost_imagevalidation(req)

Submit image validation

Validates an images and returns a validation errors (if available).

### Example
```ruby
api = GootenApiClient::ImagevalidationApi.new

req = GootenApiClient::ImageValidationVm.new # [ImageValidationVm] Image validation request, contains sku and image sizes per space


begin
  result = api.p_ost_imagevalidation(req)
rescue GootenApiClient::ApiError => e
  puts "Exception when calling p_ost_imagevalidation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | [**ImageValidationVm**](ImageValidationVm.md)| Image validation request, contains sku and image sizes per space | 

### Return type

[**ImageValidatorResult**](ImageValidatorResult.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



