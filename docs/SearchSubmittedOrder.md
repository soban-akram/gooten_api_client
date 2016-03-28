# GootenApiClient::SearchSubmittedOrder

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**nice_id** | **String** |  | 
**source_id** | **String** | Clients can submit an ID they use for the order here. | 
**items** | [**Array&lt;PostSubmittedItem&gt;**](PostSubmittedItem.md) |  | 
**total** | [**ProductPriceInfo**](ProductPriceInfo.md) |  | 
**shipping_total** | [**ProductPriceInfo**](ProductPriceInfo.md) |  | 
**discount_code** | **String** |  | 
**discount_amount** | [**ProductPriceInfo**](ProductPriceInfo.md) |  | 
**meta** | [**Meta**](Meta.md) | An optional Map&lt;string,string&gt; of misc properties. | 



