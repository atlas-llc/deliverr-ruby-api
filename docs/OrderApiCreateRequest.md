# Deliverr::OrderApiCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_order_id** | **String** | A unique order reference meaningful to the external system submitting the order. |  |
| **created_at** | **Time** | The timestamp of creation in RFC 3339 format. e.g. 2017-07-21T17:32:28Z | [optional] |
| **updated_at** | **Time** | The timestamp when last updated in RFC 3339 format. e.g. 2017-07-21T17:32:28Z | [optional] |
| **source** | **String** | The name of the system originating the order such as SHOPIFY, AMAZON, WEBSITE, WALMART or similar. Free text. This is a vital field if the source marketplace restricts which carriers are allowed to be used. |  |
| **source_order_id** | **String** | The order id or reference that is meaningful to the buyer and/or the system sourcing the order. |  |
| **shipto_address** | [**Address**](Address.md) |  |  |
| **order_delivery_time** | **Time** | UTC datetime value for when the order should arrive at the buyer&#39;s address, based on expectations given to customers or set by the originating marketplace. See the Shipment SLA section of this method&#39;s documentation for details. This date time needs to be in the future and after orderShipmentTime. | [optional] |
| **order_shipment_time** | **Time** | UTC datetime value for when the order should ship by, based on expectations given to customers or set by the originating marketplace. This date time needs to be in the future and before orderDeliveryTime. | [optional] |
| **line_items** | [**Array&lt;OrderApiLineItem&gt;**](OrderApiLineItem.md) | line items to be shipped in this order. |  |
| **deliver_days** | **Float** | Define the number of days in which this order must be delivered, counting from the date of shipment. See the Shipment SLA section of this method&#39;s documentation for details. | [optional] |
| **ship_method** | **String** | Text of ship method like &#39;Standard&#39;, &#39;UPS GROUND&#39;, etc. See the Shipment SLA section of this method&#39;s documentation for details. | [optional] |
| **order_creation_time** | **Time** | UTC datetime value for when the order landed in your system or the originating marketplace. | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::OrderApiCreateRequest.new(
  external_order_id: null,
  created_at: null,
  updated_at: null,
  source: null,
  source_order_id: null,
  shipto_address: null,
  order_delivery_time: null,
  order_shipment_time: null,
  line_items: null,
  deliver_days: null,
  ship_method: null,
  order_creation_time: null
)
```

