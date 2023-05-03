# DeliverrAPI::ParcelTrackingGetResponseTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **parcel_id** | **String** | Unique ID used to track the parcel, returned after acquiring a purchase label. | [optional] |
| **customer_reference_id** | **String** | The customer reference id. | [optional] |
| **customer_custom_field** | **String** | An optional field to input additional information about the parcel. | [optional] |
| **status** | **String** | Status of the tracking request. |  |
| **errors** | **String** | Errors associated with the response. | [optional] |
| **error_message** | **String** | Error messages associated with the response. | [optional] |
| **package_tracking_url** | **String** | URL that can be used to track the package. | [optional] |
| **shipping_label_url** | **String** | URL used to download the label data. | [optional] |
| **tracking_code** | **String** | The tracking code for the package. | [optional] |
| **carrier_code** | **String** | The carrier code for the package. | [optional] |
| **event_timestamps** | [**TrackingResultTimestampsTest**](TrackingResultTimestampsTest.md) |  |  |
| **expired_tracking_data** | [**Array&lt;ExpiredTrackingDataTest&gt;**](ExpiredTrackingDataTest.md) |  | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::ParcelTrackingGetResponseTest.new(
  parcel_id: null,
  customer_reference_id: null,
  customer_custom_field: null,
  status: null,
  errors: null,
  error_message: null,
  package_tracking_url: null,
  shipping_label_url: null,
  tracking_code: null,
  carrier_code: null,
  event_timestamps: null,
  expired_tracking_data: null
)
```

