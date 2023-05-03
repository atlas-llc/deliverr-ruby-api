# Deliverr::ReturnsApiShippingLabel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **carrier** | [**ReturnsPublicApiCarriers**](ReturnsPublicApiCarriers.md) |  |  |
| **tracking_code** | **String** | Carrier tracking code. |  |
| **tracking_url** | **String** | Tracking url for shipping label. | [optional] |
| **tracking_status** | [**TrackingStatus**](TrackingStatus.md) |  | [optional] |
| **label_format** | **String** | Carrier label format. | [optional] |
| **label_url** | **String** | Carrier label download url label format is required when passing label url. | [optional] |
| **shipping_method** | [**ReturnsPublicApiShippingMethod**](ReturnsPublicApiShippingMethod.md) |  | [optional] |
| **package_dimensions** | [**PackageDimensions**](PackageDimensions.md) |  | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::ReturnsApiShippingLabel.new(
  carrier: null,
  tracking_code: null,
  tracking_url: null,
  tracking_status: null,
  label_format: null,
  label_url: null,
  shipping_method: null,
  package_dimensions: null
)
```

