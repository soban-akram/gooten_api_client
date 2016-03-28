# GootenApiClient::ShippingpricesApi

All URIs are relative to *https://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**p_ost_shippingprices**](ShippingpricesApi.md#p_ost_shippingprices) | **POST** /shippingprices/ | Get a list of shipping options and prices for items




# **p_ost_shippingprices**
> ShippingPricesResult p_ost_shippingprices(shipping_prices_request, opts)

Get a list of shipping options and prices for items

Get a list of shipping options and prices for items.

### Example
```ruby

api = GootenApiClient::ShippingpricesApi.new

shipping_prices_request = GootenApiClient::ShippingPricesRequest.new # [ShippingPricesRequest] DTO with required information

opts = { 
  partner_billing_key: "partner_billing_key_example" # [String] Partner billing key
}

begin
  result = api.p_ost_shippingprices(shipping_prices_request, opts)
rescue GootenApiClient::ApiError => e
  puts "Exception when calling p_ost_shippingprices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipping_prices_request** | [**ShippingPricesRequest**](ShippingPricesRequest.md)| DTO with required information | 
 **partner_billing_key** | **String**| Partner billing key | [optional] 


### Return type

[**ShippingPricesResult**](ShippingPricesResult.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json





