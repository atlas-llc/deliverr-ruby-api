# Deliverr::QuoteCreateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price** | **Float** | The price of the parcel. |  |
| **service_level** | [**ServiceLevel**](ServiceLevel.md) |  |  |
| **billed_weight_lbs** | **Float** | The billed weight in pounds (lbs). |  |
| **dimensions** | [**ParcelPackageDimensions**](ParcelPackageDimensions.md) |  |  |
| **warnings** | **Array&lt;String&gt;** | Warnings received while getting a quote. |  |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::QuoteCreateResponse.new(
  price: null,
  service_level: null,
  billed_weight_lbs: null,
  dimensions: null,
  warnings: null
)
```

