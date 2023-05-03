# Deliverr::Shipment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shipment_id** | **Float** | Deliverr&#39;s internal identifier for the shipment. |  |
| **status** | [**ApiInboundShipmentStatus**](ApiInboundShipmentStatus.md) |  |  |
| **ship_to_address** | [**Address**](Address.md) |  |  |
| **items** | [**Array&lt;ShipmentItem&gt;**](ShipmentItem.md) | All items of this shipment. |  |
| **packages** | [**Array&lt;Package&gt;**](Package.md) | All packages of this shipment. |  |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::Shipment.new(
  shipment_id: null,
  status: null,
  ship_to_address: null,
  items: null,
  packages: null
)
```

