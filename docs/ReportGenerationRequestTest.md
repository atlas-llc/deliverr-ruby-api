# DeliverrAPI::ReportGenerationRequestTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_type** | [**SellerReportTypeTest**](SellerReportTypeTest.md) |  |  |
| **start_date** | **Time** | The start date for the data in the report. | [optional] |
| **end_date** | **Time** | The end date for the data in the report. | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::ReportGenerationRequestTest.new(
  report_type: null,
  start_date: null,
  end_date: null
)
```

