# Deliverr::BadParcelRequestError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | [**StatusCodesBADREQUEST**](StatusCodesBADREQUEST.md) |  |  |
| **message** | **String** |  | [default to &#39;Bad Request&#39;] |
| **type** | **String** | An optional error message for incorrectly formatted requests to indicate why the request failed. Example: \&quot;child \\\&quot;dimensions\\&#39; fails because [child \\\&quot;weightUnit\\&#39; fails because [\\\&quot;weightUnit\\\&quot; must be one of [lb, kg]]]\&quot; This indicates that the request failed because the weightUnit that was provided is not supported. | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::BadParcelRequestError.new(
  code: null,
  message: null,
  type: null
)
```

