# GootenApiClient::UserinfoApi

All URIs are relative to *https://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_userinfo**](UserinfoApi.md#get_userinfo) | **GET** /userinfo/ | Get the user&#39;s language code and country based upon IP




# **get_userinfo**
> UserInfo get_userinfo(opts)

Get the user&#39;s language code and country based upon IP

IP-based user info lookup

### Example
```ruby

api = GootenApiClient::UserinfoApi.new

opts = { 
  language_code: "language_code_example" # [String] Two-character language code, if known at the time.
}

begin
  result = api.get_userinfo(opts)
rescue GootenApiClient::ApiError => e
  puts "Exception when calling get_userinfo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language_code** | **String**| Two-character language code, if known at the time. | [optional] 


### Return type

[**UserInfo**](UserInfo.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json





