# DeliverrAPI::OAuthOmar

All URIs are relative to *http://localhost:3000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**authorization_redirect**](OAuthOmar.md#authorization_redirect) | **GET** /oauth/v1/authorize |  |
| [**exchange_token**](OAuthOmar.md#exchange_token) | **POST** /oauth/v1/token |  |


## authorization_redirect

> authorization_redirect(redirect_uri, scopes)



Authorization URL to initiate flow

### Examples

```ruby
require 'time'
require 'deliverr_api'

api_instance = DeliverrAPI::OAuthOmar.new
redirect_uri = 'redirect_uri_example' # String | The URI to which the oauth flow should redirect after successful authentication.
scopes = 'scopes_example' # String | list of scopes seperated by '+'. Possible values are: api/products, api/inbounds, api/orders, api/returns, api/parcels, api/reports, api/webhooks.

begin
  
  api_instance.authorization_redirect(redirect_uri, scopes)
rescue DeliverrAPI::ApiError => e
  puts "Error when calling OAuthOmar->authorization_redirect: #{e}"
end
```

#### Using the authorization_redirect_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> authorization_redirect_with_http_info(redirect_uri, scopes)

```ruby
begin
  
  data, status_code, headers = api_instance.authorization_redirect_with_http_info(redirect_uri, scopes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DeliverrAPI::ApiError => e
  puts "Error when calling OAuthOmar->authorization_redirect_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **redirect_uri** | **String** | The URI to which the oauth flow should redirect after successful authentication. |  |
| **scopes** | **String** | list of scopes seperated by &#39;+&#39;. Possible values are: api/products, api/inbounds, api/orders, api/returns, api/parcels, api/reports, api/webhooks. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_token

> <TokenResponse> exchange_token(grant_type, opts)



Exchange code for a refresh_token and use refresh_token to generate access_tokens at this endpoint.

### Examples

```ruby
require 'time'
require 'deliverr_api'

api_instance = DeliverrAPI::OAuthOmar.new
grant_type = TODO # GrantTypes | 
opts = {
  refresh_token: 'refresh_token_example', # String | Must be present if grant_type is refresh_token.
  code: 'code_example' # String | Must be present if grant_type is authorization_code.
}

begin
  
  result = api_instance.exchange_token(grant_type, opts)
  p result
rescue DeliverrAPI::ApiError => e
  puts "Error when calling OAuthOmar->exchange_token: #{e}"
end
```

#### Using the exchange_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenResponse>, Integer, Hash)> exchange_token_with_http_info(grant_type, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.exchange_token_with_http_info(grant_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenResponse>
rescue DeliverrAPI::ApiError => e
  puts "Error when calling OAuthOmar->exchange_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grant_type** | [**GrantTypes**](GrantTypes.md) |  |  |
| **refresh_token** | **String** | Must be present if grant_type is refresh_token. | [optional] |
| **code** | **String** | Must be present if grant_type is authorization_code. | [optional] |

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

