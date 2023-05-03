# DeliverrAPI::ParcelCreateResponseTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **parcel_id** | **String** | Unique ID used to track the parcel, returned after acquiring a purchase label. | [optional] |
| **customer_parcel_id** | **String** | An Order or PO number to associate to the parcel. |  |
| **status** | [**ParcelStatusTest**](ParcelStatusTest.md) |  |  |
| **errors** | **String** | Used to get the error details. | [optional] |
| **shipping_label_url** | **String** | URL used to download the label data. | [optional] |
| **package_tracking_url** | **String** | URL that can be used to track the package. | [optional] |
| **price** | **Float** | The price of the parcel. | [optional] |
| **service_level** | [**ServiceLevelTest**](ServiceLevelTest.md) |  |  |
| **customer_custom_field** | **String** | An optional field to input additional information about the parcel. | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::ParcelCreateResponseTest.new(
  parcel_id: null,
  customer_parcel_id: null,
  status: null,
  errors: null,
  shipping_label_url: null,
  package_tracking_url: null,
  price: null,
  service_level: null,
  customer_custom_field: null
)
```

