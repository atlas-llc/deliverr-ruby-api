# Deliverr::ShippingRateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the shipping rate to display to the customer |  |
| **code** | **String** | An identifier for the shipping rate |  |
| **shipping_days** | **Integer** | The number of transit days for the shipping rate |  |
| **arrives_by** | **String** | A message with the arrival date |  |
| **price** | [**Price**](Price.md) |  |  |
| **note** | **String** | Additional information to share with the customer | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::ShippingRateResponse.new(
  name: Free 2-Day Delivery,
  code: Deliverr-2-Day,
  shipping_days: 2,
  arrives_by: Arrives by Thursday, March 10th,
  price: null,
  note: Free 2-Day Delivery isn&#39;t available to PO Boxes
)
```

