# DeliverrAPI::ShipmentItemTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quantity** | **Float** | The quantity of this product that is being shipped. |  |
| **received_quantity** | **Float** | The quantity of this product that has been received. |  |
| **product_id** | **String** | The globally unique product identifier created by Deliverr and assigned on product creation. May be referred to in other documentation as the Deliverr SKU or DSKU. |  |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::ShipmentItemTest.new(
  quantity: null,
  received_quantity: null,
  product_id: null
)
```

