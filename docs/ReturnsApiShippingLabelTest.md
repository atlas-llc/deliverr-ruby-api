# DeliverrAPI::ReturnsApiShippingLabelTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **carrier** | [**ReturnsPublicApiCarriersTest**](ReturnsPublicApiCarriersTest.md) |  |  |
| **tracking_code** | **String** | Carrier tracking code. |  |
| **tracking_url** | **String** | Tracking url for shipping label. | [optional] |
| **tracking_status** | [**TrackingStatusTest**](TrackingStatusTest.md) |  | [optional] |
| **label_format** | **String** | Carrier label format. | [optional] |
| **label_url** | **String** | Carrier label download url label format is required when passing label url. | [optional] |
| **shipping_method** | [**ReturnsPublicApiShippingMethodTest**](ReturnsPublicApiShippingMethodTest.md) |  | [optional] |
| **package_dimensions** | [**PackageDimensionsTest**](PackageDimensionsTest.md) |  | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::ReturnsApiShippingLabelTest.new(
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

