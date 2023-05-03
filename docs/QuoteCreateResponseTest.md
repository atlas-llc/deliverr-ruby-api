# DeliverrAPI::QuoteCreateResponseTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price** | **Float** | The price of the parcel. |  |
| **service_level** | [**ServiceLevelTest**](ServiceLevelTest.md) |  |  |
| **billed_weight_lbs** | **Float** | The billed weight in pounds (lbs). |  |
| **dimensions** | [**ParcelPackageDimensionsTest**](ParcelPackageDimensionsTest.md) |  |  |
| **warnings** | **Array&lt;String&gt;** | Warnings received while getting a quote. |  |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::QuoteCreateResponseTest.new(
  price: null,
  service_level: null,
  billed_weight_lbs: null,
  dimensions: null,
  warnings: null
)
```

