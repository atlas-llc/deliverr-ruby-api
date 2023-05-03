# Deliverr::ApiUpdateProductModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The product title or short description. Should represent a single line of text suitable to identify the product or for search purposes. | [optional] |
| **sku** | **String** | The human-readable Stock Keeping Unit (SKU) for reporting. This value may change over time. | [optional] |
| **category** | [**CategoryEnum**](CategoryEnum.md) |  | [optional] |
| **height** | **Float** | height in inches of the product by itself. Will be ignored if provided and dimsLocked value is true from ProductModel. | [optional] |
| **width** | **Float** | Width in inches by itself. Will be ignored if provided and dimsLocked value is true from ProductModel. | [optional] |
| **length** | **Float** | Length in inches by itself. Will be ignored if provided and dimsLocked value is true from ProductModel. | [optional] |
| **weight** | **Float** | Weight in pounds by itself. Will be ignored if provided and dimsLocked value is true from ProductModel. | [optional] |
| **international** | [**MyPartialProductCustomsInfo**](MyPartialProductCustomsInfo.md) |  | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::ApiUpdateProductModel.new(
  title: null,
  sku: null,
  category: null,
  height: null,
  width: null,
  length: null,
  weight: null,
  international: null
)
```

