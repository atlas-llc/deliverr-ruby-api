# DeliverrAPI::BarcodeOptionTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **barcode_type** | **String** | &lt;B&gt;Type Descriptions:&lt;/B&gt;&lt;BR&gt; &lt;table&gt; &lt;thead&gt; &lt;tr&gt; &lt;th&gt;barcodeType&lt;/th&gt; &lt;th&gt;Description&lt;/th&gt; &lt;/tr&gt; &lt;/thead&gt; &lt;tbody&gt; &lt;tr&gt; &lt;td&gt;AMAZON&lt;/td&gt; &lt;td&gt;Any ASIN or FSKU value&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;MANUFACTURER&lt;/td&gt; &lt;td&gt;Any of the following types: UPC/EAN/GTIN-14/ISBN&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;PRODUCT&lt;/td&gt; &lt;td&gt;The value of the productId of a created Product record. Also referred to in some documentation as the DSKU. Because this value is guaranteed to be globally unique, it may be assigned internally without a specific API request.&lt;/td&gt; &lt;/tr&gt; &lt;/tbody&gt; &lt;/table&gt; |  |
| **barcode_value** | **String** | The value of an barcode. |  |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::BarcodeOptionTest.new(
  barcode_type: null,
  barcode_value: null
)
```

