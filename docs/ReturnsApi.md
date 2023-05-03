# Deliverr::ReturnsAPI

All URIs are relative to *https://api.deliverr.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_order_return**](ReturnsAPI.md#cancel_order_return) | **PUT** /returns/v1/orders/{returnId}/cancel |  |
| [**create_order_return**](ReturnsAPI.md#create_order_return) | **POST** /returns/v1/orders |  |
| [**get_order_return**](ReturnsAPI.md#get_order_return) | **GET** /returns/v1/orders/{returnId} |  |


## cancel_order_return

> cancel_order_return(x_caller_id, return_id)



Cancel a return that was create. Return will not be cancelled if it is received.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
Deliverr.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Deliverr::ReturnsAPI.new
x_caller_id = 'x_caller_id_example' # String | The caller identifier.
return_id = 'return_id_example' # String | Unique ID used to track the return.

begin
  
  api_instance.cancel_order_return(x_caller_id, return_id)
rescue Deliverr::ApiError => e
  puts "Error when calling ReturnsAPI->cancel_order_return: #{e}"
end
```

#### Using the cancel_order_return_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> cancel_order_return_with_http_info(x_caller_id, return_id)

```ruby
begin
  
  data, status_code, headers = api_instance.cancel_order_return_with_http_info(x_caller_id, return_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Deliverr::ApiError => e
  puts "Error when calling ReturnsAPI->cancel_order_return_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_caller_id** | **String** | The caller identifier. |  |
| **return_id** | **String** | Unique ID used to track the return. |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_order_return

> <ReturnsApiOrder> create_order_return(x_caller_id, returns_api_create_order_request)



Creates return order for inspection.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
Deliverr.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Deliverr::ReturnsAPI.new
x_caller_id = 'x_caller_id_example' # String | The caller identifier.
returns_api_create_order_request = Deliverr::ReturnsApiCreateOrderRequest.new({destination_address: Deliverr::ReturnsDestinationAddress.new({name: 'name_example', street1: 'street1_example', city: 'city_example', state: 'state_example', zip: 'zip_example', country: 'country_example'}), marketplace_order: Deliverr::ReturnsApiMarketplaceOrder.new({marketplace_order_id: 'marketplace_order_id_example', marketplace_name: Deliverr::ReturnsPublicApiMarketplace::AIRSHOP}), rma: 'rma_example', external_return_id: 'external_return_id_example', return_items: [Deliverr::ReturnsApiReturnItem.new({product: Deliverr::ReturnsApiProductDetail.new({product_name: 'product_name_example', identifiers: [Deliverr::ReturnsProductIdentifiers.new({type: 'DELIVERR_SKU', value: 'value_example'})]}), quantity: 3.56})]}) # ReturnsApiCreateOrderRequest | 

begin
  
  result = api_instance.create_order_return(x_caller_id, returns_api_create_order_request)
  p result
rescue Deliverr::ApiError => e
  puts "Error when calling ReturnsAPI->create_order_return: #{e}"
end
```

#### Using the create_order_return_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReturnsApiOrder>, Integer, Hash)> create_order_return_with_http_info(x_caller_id, returns_api_create_order_request)

```ruby
begin
  
  data, status_code, headers = api_instance.create_order_return_with_http_info(x_caller_id, returns_api_create_order_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReturnsApiOrder>
rescue Deliverr::ApiError => e
  puts "Error when calling ReturnsAPI->create_order_return_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_caller_id** | **String** | The caller identifier. |  |
| **returns_api_create_order_request** | [**ReturnsApiCreateOrderRequest**](ReturnsApiCreateOrderRequest.md) |  |  |

### Return type

[**ReturnsApiOrder**](ReturnsApiOrder.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_order_return

> <ReturnsApiOrder> get_order_return(x_caller_id, return_id)



Get return by returnId. This will include ReturnOrder, ReturnItems with inspection status and ShippingLabel.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
Deliverr.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Deliverr::ReturnsAPI.new
x_caller_id = 'x_caller_id_example' # String | The caller identifier.
return_id = 'return_id_example' # String | Unique ID used to track the return.

begin
  
  result = api_instance.get_order_return(x_caller_id, return_id)
  p result
rescue Deliverr::ApiError => e
  puts "Error when calling ReturnsAPI->get_order_return: #{e}"
end
```

#### Using the get_order_return_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReturnsApiOrder>, Integer, Hash)> get_order_return_with_http_info(x_caller_id, return_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_order_return_with_http_info(x_caller_id, return_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReturnsApiOrder>
rescue Deliverr::ApiError => e
  puts "Error when calling ReturnsAPI->get_order_return_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_caller_id** | **String** | The caller identifier. |  |
| **return_id** | **String** | Unique ID used to track the return. |  |

### Return type

[**ReturnsApiOrder**](ReturnsApiOrder.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

