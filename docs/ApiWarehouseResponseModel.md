# Deliverr::ApiWarehouseResponseModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | The globally unique product identifier created by Deliverr and assigned on product creation. May be referred to in other documentation as the Deliverr SKU or DSKU. |  |
| **warehouse_details** | [**Array&lt;WarehouseDetails&gt;**](WarehouseDetails.md) |  | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::ApiWarehouseResponseModel.new(
  product_id: null,
  warehouse_details: null
)
```

