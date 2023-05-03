# DeliverrAPI::StorageOmar

All URIs are relative to *http://localhost:3000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_inbound_order**](StorageOmar.md#get_inbound_order) | **GET** /storage/v1/inbounds/{shippingPlanId} |  |


## get_inbound_order

> <StorageApiInboundResponse> get_inbound_order(shipping_plan_id)



Get storage inbound by storageInboundId. This will include StorageInboundOrder, StorageInboundItems with status .

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
DeliverrAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DeliverrAPI::StorageOmar.new
shipping_plan_id = 'shipping_plan_id_example' # String | Unique ID used to get the storageInboundCreated.

begin
  
  result = api_instance.get_inbound_order(shipping_plan_id)
  p result
rescue DeliverrAPI::ApiError => e
  puts "Error when calling StorageOmar->get_inbound_order: #{e}"
end
```

#### Using the get_inbound_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageApiInboundResponse>, Integer, Hash)> get_inbound_order_with_http_info(shipping_plan_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_inbound_order_with_http_info(shipping_plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageApiInboundResponse>
rescue DeliverrAPI::ApiError => e
  puts "Error when calling StorageOmar->get_inbound_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shipping_plan_id** | **String** | Unique ID used to get the storageInboundCreated. |  |

### Return type

[**StorageApiInboundResponse**](StorageApiInboundResponse.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

