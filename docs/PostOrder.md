# GootenApiClient::PostOrder

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ship_to_address** | [**ShipToAddress**](ShipToAddress.md) |  | 
**billing_address** | [**ShipToAddress**](ShipToAddress.md) |  | 
**items** | [**Array&lt;PostOrderItem&gt;**](PostOrderItem.md) |  | 
**payment** | [**OrderPayment**](OrderPayment.md) |  | 
**source_id** | **String** | Clients can submit an ID they use for the order here. | 
**is_pre_submit** | **BOOLEAN** | Submit the order into PrePayment status. | 
**coupon_code** | **String** |  | 
**meta** | [**Meta**](Meta.md) | An optional Map&lt;string,string&gt; of misc properties. | 


