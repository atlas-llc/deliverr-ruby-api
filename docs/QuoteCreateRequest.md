# Deliverr::QuoteCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_level** | [**ServiceLevel**](ServiceLevel.md) |  |  |
| **injection_location** | [**InjectionLocation**](InjectionLocation.md) |  |  |
| **ship_to_address** | [**ParcelAddress**](ParcelAddress.md) |  |  |
| **dimensions** | [**ParcelPackageDimensions**](ParcelPackageDimensions.md) |  |  |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::QuoteCreateRequest.new(
  service_level: null,
  injection_location: null,
  ship_to_address: null,
  dimensions: null
)
```

