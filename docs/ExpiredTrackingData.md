# Deliverr::ExpiredTrackingData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label_id** | **String** | Unique ID for the label. | [optional] |
| **tracking_code** | **String** | The tracking code for the package. | [optional] |
| **shipping_label_url** | **String** | URL used to download the label data. | [optional] |
| **package_tracking_url** | **String** | URL that can be used to track the package. | [optional] |
| **shipping_method** | **String** | The shipping method used to ship the package. | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::ExpiredTrackingData.new(
  label_id: null,
  tracking_code: null,
  shipping_label_url: null,
  package_tracking_url: null,
  shipping_method: null
)
```

