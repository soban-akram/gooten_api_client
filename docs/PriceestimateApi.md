# GootenApiClient::PriceestimateApi

All URIs are relative to *https://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**p_ost_priceestimate**](PriceestimateApi.md#p_ost_priceestimate) | **POST** /v/{version}/source/{source}/priceestimate/ | Get an order price


# **p_ost_priceestimate**
> OrderPriceResult p_ost_priceestimate(order, version, source)

Get an order price

Get the price of an order, including discounts from a coupon.

### Example
```ruby
api = GootenApiClient::PriceestimateApi.new

order = GootenApiClient::Order.new # [Order] Order to potentially be submitted

version = 56 # [Integer] Version of the api being used

source = "source_example" # [String] Description of the source-- ios, android, api


begin
  result = api.p_ost_priceestimate(order, version, source)
rescue GootenApiClient::ApiError => e
  puts "Exception when calling p_ost_priceestimate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order** | [**Order**](Order.md)| Order to potentially be submitted | 
 **version** | [**Integer**](.md)| Version of the api being used | 
 **source** | **String**| Description of the source-- ios, android, api | 

### Return type

[**OrderPriceResult**](OrderPriceResult.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



