# Deliverr::ReportsAPI

All URIs are relative to *https://api.deliverr.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**generate_report**](ReportsAPI.md#generate_report) | **POST** /reports/v1/report |  |
| [**get_report_status**](ReportsAPI.md#get_report_status) | **GET** /reports/v1/status/{reportReference} |  |


## generate_report

> <ReportGenerationResponse> generate_report(report_generation_request)



Create a report that can be downloaded as a CSV from the \"Get report status and url\" endpoint <tbody>               <br>               <tr style=\"height: 22px;\">               <td style=\"width: 69.8571%; height: 21px;\">               <p class=\"wysiwyg-indent1\"><strong>Relevant reports</strong></p>               <p class=\"wysiwyg-indent1\">Here are a few important reports for tracking <b>Inventory</b>,                                          <b>Orders</b> and <b>Shipments</b>:</p>               </td>               </tr>               <tr style=\"height: 22px;\">               <td style=\"width: 69.8571%; height: 22px;\">               <p class=\"wysiwyg-indent1\"><a href=\"https://support.deliverr.com/hc/en-us/articles/1500008315782-Inbounds-Shipments-Report\" target=\"_self\"><strong>Inbounds - Shipments: </strong></a>This report provides the status of the shipments that make up your shipping plans. You will also find receiving information. (Requires startDate and endDate)<em>&nbsp;</em></p>               </td>               <tr style=\"height: 22px;\">               <td class=\"wysiwyg-indent1\" style=\"width: 30.1429%; height: 22px;\">               </td>               <td style=\"width: 69.8571%; height: 22px;\">               <p class=\"wysiwyg-indent1\"><a href=\"https://support.deliverr.com/hc/en-us/articles/1500008318542-Inventory-Levels-Today-Report\" target=\"_self\"><strong>Inventory - Levels Today: </strong></a>This report provides a snapshot of the most recent inventory levels by SKU at each Deliverr fulfillment center. In addition, you will find data for orders placed over the last 30 days and days of fast tag remaining. The snapshot is taken around midnight UTC every day.</p>               </td>               </tr>               <tr style=\"height: 22px;\">               <td style=\"width: 69.8571%; height: 16px;\">               <p class=\"wysiwyg-indent1\"><a href=\"https://support.deliverr.com/hc/en-us/articles/1500011593962-Orders-Orders-Report\" target=\"_self\"><strong>Orders - All Orders: </strong></a>This report captures critical order information, such as marketplace, order creation time, order IDs, fulfillment cost, and important order status information (processing, shipped, delivered, cancelled, and error). You will also find order error codes:</p>               <ul>               <li>BAD_ADDRESS - the order's address cannot be validated, and you must correct it</li>               <li>STOCKOUT - the order cannot be fulfilled because one or more SKUs is stocked out</li>               <li>DSKU_NEVER_INBOUNDED - this order cannot be fulfilled because one or more SKUs was never inbounded to Deliverr</li>               </ul>               (Requires startDate and endDate) <br><br>               </td>               </tr>               <tr style=\"height: 16px;\">               <td style=\"width: 69.8571%; height: 16px;\">               <p class=\"wysiwyg-indent1\"><a href=\"https://support.deliverr.com/hc/en-us/articles/1500011618401-Orders-Shipments-Report\" target=\"_self\"><strong>Orders - Shipments: </strong></a>This report provides information about the shipments in your orders. (Requires startDate and endDate)</p>               </td>               </tr>               </tbody>

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
Deliverr.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Deliverr::ReportsAPI.new
report_generation_request = Deliverr::ReportGenerationRequest.new({report_type: Deliverr::SellerReportType::BILLING_INVOICES}) # ReportGenerationRequest | 

begin
  
  result = api_instance.generate_report(report_generation_request)
  p result
rescue Deliverr::ApiError => e
  puts "Error when calling ReportsAPI->generate_report: #{e}"
end
```

#### Using the generate_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportGenerationResponse>, Integer, Hash)> generate_report_with_http_info(report_generation_request)

```ruby
begin
  
  data, status_code, headers = api_instance.generate_report_with_http_info(report_generation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportGenerationResponse>
rescue Deliverr::ApiError => e
  puts "Error when calling ReportsAPI->generate_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_generation_request** | [**ReportGenerationRequest**](ReportGenerationRequest.md) |  |  |

### Return type

[**ReportGenerationResponse**](ReportGenerationResponse.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_report_status

> <Report> get_report_status(report_reference)



Poll this endpoint using the reportReference returned by the \"Create report\" endpoint. Use this endpoint to download the reports generated by the creation request.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
Deliverr.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Deliverr::ReportsAPI.new
report_reference = 'report_reference_example' # String | 

begin
  
  result = api_instance.get_report_status(report_reference)
  p result
rescue Deliverr::ApiError => e
  puts "Error when calling ReportsAPI->get_report_status: #{e}"
end
```

#### Using the get_report_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Report>, Integer, Hash)> get_report_status_with_http_info(report_reference)

```ruby
begin
  
  data, status_code, headers = api_instance.get_report_status_with_http_info(report_reference)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Report>
rescue Deliverr::ApiError => e
  puts "Error when calling ReportsAPI->get_report_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_reference** | **String** |  |  |

### Return type

[**Report**](Report.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

