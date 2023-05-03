# Deliverr::BadOrderRequestError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | [**StatusCodesBADREQUEST**](StatusCodesBADREQUEST.md) |  |  |
| **message** | **String** |  | [default to &#39;Bad Request&#39;] |
| **type** | **String** | Please see &lt;a href&#x3D;&#39;https://support.deliverr.com/hc/en-us/articles/6858275452567&#39;&gt;Products and Order fulfillment&lt;/a&gt; in the API guide for more information on possible error codes. | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::BadOrderRequestError.new(
  code: null,
  message: null,
  type: null
)
```

