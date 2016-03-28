# GootenApiClient::PostSubmittedOrder

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique ID we use within our system. | 
**nice_id** | **String** | A short, non-unique ID that is optionally used for customer service. | 
**souce_id** | **String** | Partner&#39;s internal ID-- entirely optional | 
**items** | [**Array&lt;PostSubmittedItem&gt;**](PostSubmittedItem.md) |  | 
**total** | [**ProductPriceInfo**](ProductPriceInfo.md) |  | 
**shipping_total** | [**ProductPriceInfo**](ProductPriceInfo.md) |  | 
**discount_amount** | [**ProductPriceInfo**](ProductPriceInfo.md) |  | 
**discount_code** | **String** |  | 
**billing_address** | [**ShipToAddress**](ShipToAddress.md) |  | 
**shipping_address** | [**ShipToAddress**](ShipToAddress.md) |  | 
**meta** | [**Meta**](Meta.md) | An optional Map&lt;string,string&gt; of misc properties. | 



