# Deliverr::BadRequestError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | [**StatusCodesBADREQUEST**](StatusCodesBADREQUEST.md) |  |  |
| **message** | **String** |  | [default to &#39;Bad Request&#39;] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::BadRequestError.new(
  code: null,
  message: null,
  type: null
)
```

