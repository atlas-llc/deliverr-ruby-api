# Deliverr::ParcelUnprocessableEntityError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | [**StatusCodesUNPROCESSABLEENTITY**](StatusCodesUNPROCESSABLEENTITY.md) |  |  |
| **message** | **String** | An error message for incorrectly formatted requests to indicate why the request failed. Example: \&quot;{\\ \&quot;fields\\\&quot;: {\\ \&quot;parcel.shipToAddress.phone\\\&quot;: \&quot;message\\\&quot;: \\\&quot;maxLength 30\\\&quot;,\\ \&quot;value\\\&quot;: \\ \&quot;12345678901234567890123456789012345\\ \&quot;33} Please refer to Deliverr API documentation for proper usage\&quot; This indicates that the request failed because the phone number that was provided is too long. | [default to &#39;&#39;] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::ParcelUnprocessableEntityError.new(
  code: null,
  message: null,
  type: null
)
```

