# GootenApiClient::ShippriceestimateApi

All URIs are relative to *https://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_shippriceestimate**](ShippriceestimateApi.md#get_shippriceestimate) | **GET** /shippriceestimate/ | Get a baseline ship price for an item




# **get_shippriceestimate**
> ShipEstimate get_shippriceestimate(product_id, country_code, opts)

Get a baseline ship price for an item

Price returned is an estimate which may or may not be realistically attainable.

### Example
```ruby

api = GootenApiClient::ShippriceestimateApi.new

product_id = 56 # [Integer] Product ID

country_code = "country_code_example" # [String] Country Code it will be shipped to

opts = { 
  currency_code: "currency_code_example" # [String] Currency Code the estimate should be in. Defaults to USD.
}

begin
  result = api.get_shippriceestimate(product_id, country_code, opts)
rescue GootenApiClient::ApiError => e
  puts "Exception when calling get_shippriceestimate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | [**Integer**](.md)| Product ID | 
 **country_code** | **String**| Country Code it will be shipped to | 
 **currency_code** | **String**| Currency Code the estimate should be in. Defaults to USD. | [optional] 


### Return type

[**ShipEstimate**](ShipEstimate.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json





