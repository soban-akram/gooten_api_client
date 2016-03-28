# GootenApiClient::ImagesApi

All URIs are relative to *https://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_images**](ImagesApi.md#post_images) | **POST** /images/ | POSTs files to a temporary store




# **post_images**
> FileResult post_images(images)

POSTs files to a temporary store

POSTs files to a temporary store

### Example
```ruby

api = GootenApiClient::ImagesApi.new

images = File.new("/path/to/file.txt") # [File] Form/multipart file post


begin
  result = api.post_images(images)
rescue GootenApiClient::ApiError => e
  puts "Exception when calling post_images: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **images** | **File**| Form/multipart file post | 


### Return type

[**FileResult**](FileResult.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json





