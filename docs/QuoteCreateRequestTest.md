# DeliverrAPI::QuoteCreateRequestTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_level** | [**ServiceLevelTest**](ServiceLevelTest.md) |  |  |
| **injection_location** | [**InjectionLocationTest**](InjectionLocationTest.md) |  |  |
| **ship_to_address** | [**ParcelAddressTest**](ParcelAddressTest.md) |  |  |
| **dimensions** | [**ParcelPackageDimensionsTest**](ParcelPackageDimensionsTest.md) |  |  |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::QuoteCreateRequestTest.new(
  service_level: null,
  injection_location: null,
  ship_to_address: null,
  dimensions: null
)
```

