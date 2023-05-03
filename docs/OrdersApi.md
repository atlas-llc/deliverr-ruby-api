# Deliverr::OrdersAPI

All URIs are relative to *https://api.deliverr.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_order**](OrdersAPI.md#cancel_order) | **POST** /orders/v1/order/{orderId}/cancel |  |
| [**create_order**](OrdersAPI.md#create_order) | **POST** /orders/v1/order |  |
| [**get_order**](OrdersAPI.md#get_order) | **GET** /orders/v1/order/{orderId} |  |
| [**get_order_by_external_id**](OrdersAPI.md#get_order_by_external_id) | **GET** /orders/v1/order/externalId/{externalOrderId} |  |
| [**retry_order**](OrdersAPI.md#retry_order) | **POST** /orders/v1/order/{orderId}/retry |  |


## cancel_order

> cancel_order(order_id, opts)



Cancel an order that was created via the \"Create Order\" endpoint. If an order has already been processed and shipped, the order cannot be cancelled.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
Deliverr.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Deliverr::OrdersAPI.new
order_id = 'order_id_example' # String | 
opts = {
  x_deliverr_mock_request: true # Boolean | if this header is set to \"true\" the request will be treated as a mock request.
}

begin
  
  api_instance.cancel_order(order_id, opts)
rescue Deliverr::ApiError => e
  puts "Error when calling OrdersAPI->cancel_order: #{e}"
end
```

#### Using the cancel_order_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> cancel_order_with_http_info(order_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.cancel_order_with_http_info(order_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Deliverr::ApiError => e
  puts "Error when calling OrdersAPI->cancel_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** |  |  |
| **x_deliverr_mock_request** | **Boolean** | if this header is set to \&quot;true\&quot; the request will be treated as a mock request. | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_order

> <OrderApiStatusModel> create_order(order_api_create_request, opts)



Create an order to be fulfilled. <P><B>Shipment and Delivery SLAs</B> All orders are assigned a shipping date based on when they were originally placed. All orders are assigned a shipping SLA for expected shipment time and delivery time after being imported. To meet buyer expectations it's vital that this reflects customer expectations when the order is placed.<P> The logic of evaluating the provided field is:<P> <OL> <LI>If the <B>orderDeliveryTime</B> field is present and valid, the value will be set as the SLA time <LI>Otherwise, if the <B>deliveryDays</B> value is set and valid, that number of days will be added onto the calculated shipment date to determine the delivery date.</LI> <LI>Otherwise if the <B>shipMethod</B> is present, it will be mapped to a calculated delivery speed, if unrecognized or invalid, the shipping delivery date will be set to 5 days after the shipment date</LI> </OL>

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
Deliverr.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Deliverr::OrdersAPI.new
order_api_create_request = Deliverr::OrderApiCreateRequest.new({external_order_id: 'external_order_id_example', source: 'source_example', source_order_id: 'source_order_id_example', shipto_address: Deliverr::Address.new({name: 'name_example', street1: 'street1_example', city: 'city_example', state: 'state_example', postcode: 'postcode_example', country_code: Deliverr::CountryCode::AF}), line_items: [Deliverr::OrderApiLineItem.new({external_product_id: 'external_product_id_example', quantity: 3.56})]}) # OrderApiCreateRequest | 
opts = {
  idempotency_key: 'idempotency_key_example', # String | 
  x_deliverr_mock_request: true # Boolean | if this header is set to \"true\" the request will be treated as a mock request. Note that if the shipMethod field is passed in for a mock order, it will be translated to a orderDeliveryTime of 2 days from now.
}

begin
  
  result = api_instance.create_order(order_api_create_request, opts)
  p result
rescue Deliverr::ApiError => e
  puts "Error when calling OrdersAPI->create_order: #{e}"
end
```

#### Using the create_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderApiStatusModel>, Integer, Hash)> create_order_with_http_info(order_api_create_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.create_order_with_http_info(order_api_create_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderApiStatusModel>
rescue Deliverr::ApiError => e
  puts "Error when calling OrdersAPI->create_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_api_create_request** | [**OrderApiCreateRequest**](OrderApiCreateRequest.md) |  |  |
| **idempotency_key** | **String** |  | [optional] |
| **x_deliverr_mock_request** | **Boolean** | if this header is set to \&quot;true\&quot; the request will be treated as a mock request. Note that if the shipMethod field is passed in for a mock order, it will be translated to a orderDeliveryTime of 2 days from now. | [optional] |

### Return type

[**OrderApiStatusModel**](OrderApiStatusModel.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_order

> <OrderApiStatusModel> get_order(order_id, opts)



Get order information for an order created via the \"Create order\" endpoint. If the order has been shipped, the response will contain shipping information.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
Deliverr.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Deliverr::OrdersAPI.new
order_id = 'order_id_example' # String | 
opts = {
  x_deliverr_mock_request: true # Boolean | if this header is set to \"true\" the request will be treated as a mock request.
}

begin
  
  result = api_instance.get_order(order_id, opts)
  p result
rescue Deliverr::ApiError => e
  puts "Error when calling OrdersAPI->get_order: #{e}"
end
```

#### Using the get_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderApiStatusModel>, Integer, Hash)> get_order_with_http_info(order_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_order_with_http_info(order_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderApiStatusModel>
rescue Deliverr::ApiError => e
  puts "Error when calling OrdersAPI->get_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** |  |  |
| **x_deliverr_mock_request** | **Boolean** | if this header is set to \&quot;true\&quot; the request will be treated as a mock request. | [optional] |

### Return type

[**OrderApiStatusModel**](OrderApiStatusModel.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_order_by_external_id

> <OrderApiStatusModel> get_order_by_external_id(external_order_id, opts)



Get order information for an order created via the \"Create order\" endpoint, using the external order ID given during order creation. If the order has been shipped, the response will contain shipping information.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
Deliverr.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Deliverr::OrdersAPI.new
external_order_id = 'external_order_id_example' # String | 
opts = {
  x_deliverr_mock_request: true # Boolean | if this header is set to \"true\" the request will be treated as a mock request.
}

begin
  
  result = api_instance.get_order_by_external_id(external_order_id, opts)
  p result
rescue Deliverr::ApiError => e
  puts "Error when calling OrdersAPI->get_order_by_external_id: #{e}"
end
```

#### Using the get_order_by_external_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderApiStatusModel>, Integer, Hash)> get_order_by_external_id_with_http_info(external_order_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_order_by_external_id_with_http_info(external_order_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderApiStatusModel>
rescue Deliverr::ApiError => e
  puts "Error when calling OrdersAPI->get_order_by_external_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_order_id** | **String** |  |  |
| **x_deliverr_mock_request** | **Boolean** | if this header is set to \&quot;true\&quot; the request will be treated as a mock request. | [optional] |

### Return type

[**OrderApiStatusModel**](OrderApiStatusModel.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retry_order

> <OrderApiStatusModel> retry_order(order_id)



Retries processing of a fulfillment order.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
Deliverr.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Deliverr::OrdersAPI.new
order_id = 'order_id_example' # String | 

begin
  
  result = api_instance.retry_order(order_id)
  p result
rescue Deliverr::ApiError => e
  puts "Error when calling OrdersAPI->retry_order: #{e}"
end
```

#### Using the retry_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderApiStatusModel>, Integer, Hash)> retry_order_with_http_info(order_id)

```ruby
begin
  
  data, status_code, headers = api_instance.retry_order_with_http_info(order_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderApiStatusModel>
rescue Deliverr::ApiError => e
  puts "Error when calling OrdersAPI->retry_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** |  |  |

### Return type

[**OrderApiStatusModel**](OrderApiStatusModel.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

