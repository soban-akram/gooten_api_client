# GootenApiClient::OrderstatusApi

All URIs are relative to *https://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**p_ost_orderstatus**](OrderstatusApi.md#p_ost_orderstatus) | **POST** /orderstatus/ | Update an order status




# **p_ost_orderstatus**
> OrderStatusUpdateResult p_ost_orderstatus(partner_billing_key, id, order_status_name)

Update an order status

Update status of each order item.

### Example
```ruby

api = GootenApiClient::OrderstatusApi.new

partner_billing_key = "partner_billing_key_example" # [String] Partner billing key

id = "id_example" # [String] Order Id

order_status_name = "order_status_name_example" # [String] Order status name for update


begin
  result = api.p_ost_orderstatus(partner_billing_key, id, order_status_name)
rescue GootenApiClient::ApiError => e
  puts "Exception when calling p_ost_orderstatus: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **partner_billing_key** | **String**| Partner billing key | 
 **id** | **String**| Order Id | 
 **order_status_name** | **String**| Order status name for update | 


### Return type

[**OrderStatusUpdateResult**](OrderStatusUpdateResult.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json





