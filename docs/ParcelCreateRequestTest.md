# DeliverrAPI::ParcelCreateRequestTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_parcel_id** | **String** | An Order or PO number to associate to the parcel. |  |
| **service_level** | [**ServiceLevelTest**](ServiceLevelTest.md) |  | [optional] |
| **injection_location** | [**InjectionLocationTest**](InjectionLocationTest.md) |  | [optional] |
| **ship_to_address** | [**ParcelAddressTest**](ParcelAddressTest.md) |  |  |
| **return_address** | [**ParcelAddressTest**](ParcelAddressTest.md) |  | [optional] |
| **pickup_date_time** | **Time** | UTC timestamp of when the package is expected to arrive at the injection location. | [optional] |
| **dimensions** | [**ParcelPackageDimensionsTest**](ParcelPackageDimensionsTest.md) |  |  |
| **customer_custom_field** | **String** | An optional field to input additional information about the parcel. | [optional] |
| **label_format** | [**ShippingLabelFormatTest**](ShippingLabelFormatTest.md) |  | [optional] |
| **skip_address_validation** | **Boolean** | Skip address validation. | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::ParcelCreateRequestTest.new(
  customer_parcel_id: null,
  service_level: null,
  injection_location: null,
  ship_to_address: null,
  return_address: null,
  pickup_date_time: null,
  dimensions: null,
  customer_custom_field: null,
  label_format: null,
  skip_address_validation: null
)
```

