# GootenApiClient::PostSubmittedItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sku** | **String** |  | 
**product_id** | **Integer** |  | 
**product** | **String** | The type of product that was bought | 
**quantity** | **Integer** |  | 
**status** | **String** |  | 
**tracking_number** | **String** | Deprecated. Use the Shipments array as this will be removed in a future release. | 
**tracking_url** | **String** | Deprecated. Use the Shipments array as this will be removed in a future release. | 
**ship_carrier_name** | **String** | Deprecated. Use the Shipments array as this will be removed in a future release. | 
**price** | [**ProductPriceInfo**](ProductPriceInfo.md) |  | 
**discount_amount** | [**ProductPriceInfo**](ProductPriceInfo.md) |  | 
**source_id** | **String** | Partner&#39;s internal ID-- entirely optional | 
**meta** | [**Meta**](Meta.md) | An optional Map&lt;string,string&gt; of misc properties. | 
**shipments** | [**Array&lt;Shipment&gt;**](Shipment.md) |  | 



