# DeliverrAPI::ParcelGetResponseTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **parcel_id** | **String** | Unique ID used to track the parcel, returned after acquiring a purchase label. | [optional] |
| **customer_reference_id** | **String** | The customer reference id. | [optional] |
| **status** | **String** | Status of the purchase request. |  |
| **errors** | **String** | Errors associated with the parcel. | [optional] |
| **error_message** | **String** | Error messages associated with the parcel. | [optional] |
| **shipping_label_url** | **String** | URL used to download the label data. | [optional] |
| **package_tracking_url** | **String** | URL that can be used to track the package. | [optional] |
| **price** | **Float** | The price of the parcel. | [optional] |
| **service_level** | **String** | Service levels. | [optional] |
| **customer_custom_field** | **String** | An optional field to input additional information about the parcel. | [optional] |
| **carrier_code** | **String** | The carrier code for the package. | [optional] |
| **tracking_code** | **String** | The tracking code for the package. | [optional] |
| **billed_weight_lbs** | **Float** | The billed weight in pounds (lbs). | [optional] |
| **dimensions** | [**ParcelPackageDimensionsTest**](ParcelPackageDimensionsTest.md) |  | [optional] |
| **expired_tracking_data** | [**Array&lt;ExpiredTrackingDataTest&gt;**](ExpiredTrackingDataTest.md) |  | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::ParcelGetResponseTest.new(
  parcel_id: null,
  customer_reference_id: null,
  status: null,
  errors: null,
  error_message: null,
  shipping_label_url: null,
  package_tracking_url: null,
  price: null,
  service_level: null,
  customer_custom_field: null,
  carrier_code: null,
  tracking_code: null,
  billed_weight_lbs: null,
  dimensions: null,
  expired_tracking_data: null
)
```

