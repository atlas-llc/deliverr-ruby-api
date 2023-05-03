# DeliverrAPI::ApiInventoryResponseModelTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | The globally unique product identifier created by Deliverr and assigned on product creation. May be referred to in other documentation as the Deliverr SKU or DSKU. |  |
| **available_units** | **Integer** | The number of units available for sale - not reserved for open orders, belonging to products whose dimsLocked field is true, that are in a pickable and shippable state at connected warehouses. |  |
| **lot_tracking_details** | [**Array&lt;LotTrackingDetailsTest&gt;**](LotTrackingDetailsTest.md) |  | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::ApiInventoryResponseModelTest.new(
  product_id: null,
  available_units: null,
  lot_tracking_details: null
)
```

