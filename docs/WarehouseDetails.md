# Deliverr::WarehouseDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available_units** | **Integer** | The number of units available for sale - not reserved for open orders, belonging to products whose dimsLocked field is true, that are in a pickable and shippable state at connected warehouses. |  |
| **warehouse_id** | [**WarehouseIdType**](WarehouseIdType.md) |  |  |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::WarehouseDetails.new(
  available_units: null,
  warehouse_id: null
)
```

