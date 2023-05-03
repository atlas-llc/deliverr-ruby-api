# Deliverr::NotFoundError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | [**StatusCodesNOTFOUND**](StatusCodesNOTFOUND.md) |  |  |
| **message** | **String** |  | [default to &#39;Not Found&#39;] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::NotFoundError.new(
  code: null,
  message: null,
  type: null
)
```

