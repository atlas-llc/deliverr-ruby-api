# Deliverr::BadCreateShippingRequestError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | [**StatusCodesBADREQUEST**](StatusCodesBADREQUEST.md) |  |  |
| **message** | **String** |  | [default to &#39;Bad Request&#39;] |
| **type** | [**ShippingRateError**](ShippingRateError.md) |  | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::BadCreateShippingRequestError.new(
  code: null,
  message: null,
  type: null
)
```

