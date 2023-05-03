# Deliverr::InternalServerError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | [**StatusCodesINTERNALSERVERERROR**](StatusCodesINTERNALSERVERERROR.md) |  |  |
| **message** | **String** |  | [default to &#39;Internal Server Error&#39;] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::InternalServerError.new(
  code: null,
  message: null,
  type: null
)
```

