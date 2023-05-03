# Deliverr::WebhooksAPI

All URIs are relative to *https://api.deliverr.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook**](WebhooksAPI.md#create_webhook) | **POST** /webhooks/v1/webhook |  |
| [**delete_webhook**](WebhooksAPI.md#delete_webhook) | **DELETE** /webhooks/v1/webhook/{webhookId} |  |
| [**get_webhook**](WebhooksAPI.md#get_webhook) | **GET** /webhooks/v1/webhook/{webhookId} |  |
| [**get_webhooks**](WebhooksAPI.md#get_webhooks) | **GET** /webhooks/v1/webhook |  |
| [**trigger_mock_webhook_event**](WebhooksAPI.md#trigger_mock_webhook_event) | **POST** /webhooks/v1/event |  |


## create_webhook

> <WebhookModel> create_webhook(webhook_create_model)



Create a webhook to subscribe to a type of Deliverr event.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
Deliverr.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Deliverr::WebhooksAPI.new
webhook_create_model = Deliverr::WebhookCreateModel.new({type: Deliverr::WebhookType::INBOUNDS_STATUS_UPDATE, url: 'url_example', method: Deliverr::WebhookRequestMethod::POST}) # WebhookCreateModel | 

begin
  
  result = api_instance.create_webhook(webhook_create_model)
  p result
rescue Deliverr::ApiError => e
  puts "Error when calling WebhooksAPI->create_webhook: #{e}"
end
```

#### Using the create_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookModel>, Integer, Hash)> create_webhook_with_http_info(webhook_create_model)

```ruby
begin
  
  data, status_code, headers = api_instance.create_webhook_with_http_info(webhook_create_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookModel>
rescue Deliverr::ApiError => e
  puts "Error when calling WebhooksAPI->create_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_create_model** | [**WebhookCreateModel**](WebhookCreateModel.md) |  |  |

### Return type

[**WebhookModel**](WebhookModel.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_webhook

> delete_webhook(webhook_id)



Delete a webhook that has been created.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
Deliverr.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Deliverr::WebhooksAPI.new
webhook_id = 'webhook_id_example' # String | 

begin
  
  api_instance.delete_webhook(webhook_id)
rescue Deliverr::ApiError => e
  puts "Error when calling WebhooksAPI->delete_webhook: #{e}"
end
```

#### Using the delete_webhook_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_webhook_with_http_info(webhook_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_webhook_with_http_info(webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Deliverr::ApiError => e
  puts "Error when calling WebhooksAPI->delete_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhook

> <WebhookModel> get_webhook(webhook_id)



Get a specific webhook using the webhook identifier.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
Deliverr.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Deliverr::WebhooksAPI.new
webhook_id = 'webhook_id_example' # String | 

begin
  
  result = api_instance.get_webhook(webhook_id)
  p result
rescue Deliverr::ApiError => e
  puts "Error when calling WebhooksAPI->get_webhook: #{e}"
end
```

#### Using the get_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookModel>, Integer, Hash)> get_webhook_with_http_info(webhook_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_webhook_with_http_info(webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookModel>
rescue Deliverr::ApiError => e
  puts "Error when calling WebhooksAPI->get_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** |  |  |

### Return type

[**WebhookModel**](WebhookModel.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhooks

> <Array<WebhookModel>> get_webhooks



Get all webhooks currently registered and active.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
Deliverr.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Deliverr::WebhooksAPI.new

begin
  
  result = api_instance.get_webhooks
  p result
rescue Deliverr::ApiError => e
  puts "Error when calling WebhooksAPI->get_webhooks: #{e}"
end
```

#### Using the get_webhooks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<WebhookModel>>, Integer, Hash)> get_webhooks_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.get_webhooks_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<WebhookModel>>
rescue Deliverr::ApiError => e
  puts "Error when calling WebhooksAPI->get_webhooks_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;WebhookModel&gt;**](WebhookModel.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## trigger_mock_webhook_event

> trigger_mock_webhook_event(mock_webhook_details)



Trigger a mock webhook event to test that your webhooks are working successfully.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
Deliverr.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Deliverr::WebhooksAPI.new
mock_webhook_details = Deliverr::MockWebhookDetails.new({type: Deliverr::WebhookType::INBOUNDS_STATUS_UPDATE, update_type: Deliverr::WebhookMockUpdateType::SHIPPED}) # MockWebhookDetails | 

begin
  
  api_instance.trigger_mock_webhook_event(mock_webhook_details)
rescue Deliverr::ApiError => e
  puts "Error when calling WebhooksAPI->trigger_mock_webhook_event: #{e}"
end
```

#### Using the trigger_mock_webhook_event_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> trigger_mock_webhook_event_with_http_info(mock_webhook_details)

```ruby
begin
  
  data, status_code, headers = api_instance.trigger_mock_webhook_event_with_http_info(mock_webhook_details)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Deliverr::ApiError => e
  puts "Error when calling WebhooksAPI->trigger_mock_webhook_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mock_webhook_details** | [**MockWebhookDetails**](MockWebhookDetails.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

