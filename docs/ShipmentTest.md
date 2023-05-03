# DeliverrAPI::ShipmentTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shipment_id** | **Float** | Deliverr&#39;s internal identifier for the shipment. |  |
| **status** | [**ApiInboundShipmentStatusTest**](ApiInboundShipmentStatusTest.md) |  |  |
| **ship_to_address** | [**AddressTest**](AddressTest.md) |  |  |
| **items** | [**Array&lt;ShipmentItemTest&gt;**](ShipmentItemTest.md) | All items of this shipment. |  |
| **packages** | [**Array&lt;PackageTest&gt;**](PackageTest.md) | All packages of this shipment. |  |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::ShipmentTest.new(
  shipment_id: null,
  status: null,
  ship_to_address: null,
  items: null,
  packages: null
)
```

