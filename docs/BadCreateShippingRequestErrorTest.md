# DeliverrAPI::BadCreateShippingRequestErrorTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | [**StatusCodesBADREQUESTTest**](StatusCodesBADREQUESTTest.md) |  |  |
| **message** | **String** |  | [default to &#39;Bad Request&#39;] |
| **type** | [**ShippingRateErrorTest**](ShippingRateErrorTest.md) |  | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::BadCreateShippingRequestErrorTest.new(
  code: null,
  message: null,
  type: null
)
```

