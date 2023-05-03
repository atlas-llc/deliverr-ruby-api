# DeliverrAPI::ApiWarehouseResponseModelTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | The globally unique product identifier created by Deliverr and assigned on product creation. May be referred to in other documentation as the Deliverr SKU or DSKU. |  |
| **warehouse_details** | [**Array&lt;WarehouseDetailsTest&gt;**](WarehouseDetailsTest.md) |  | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::ApiWarehouseResponseModelTest.new(
  product_id: null,
  warehouse_details: null
)
```

