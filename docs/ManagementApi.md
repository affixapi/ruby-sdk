# OpenapiClient::ManagementApi

All URIs are relative to *https://api.affixapi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**client**](ManagementApi.md#client) | **GET** /2023-03-01/management/client | Client |
| [**disconnect**](ManagementApi.md#disconnect) | **POST** /2023-03-01/management/disconnect | Disconnect token |
| [**introspect**](ManagementApi.md#introspect) | **GET** /2023-03-01/management/introspect | Inspect token |
| [**token**](ManagementApi.md#token) | **POST** /2023-03-01/management/token | Create token |
| [**tokens**](ManagementApi.md#tokens) | **GET** /2023-03-01/management/tokens | Tokens |
| [**update_client**](ManagementApi.md#update_client) | **POST** /2023-03-01/management/client | Update client |


## client

> <ClientResponse> client

Client

View client attributes 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: basic
  config.api_key['basic'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['basic'] = 'Bearer'
end

api_instance = OpenapiClient::ManagementApi.new

begin
  # Client
  result = api_instance.client
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ManagementApi->client: #{e}"
end
```

#### Using the client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientResponse>, Integer, Hash)> client_with_http_info

```ruby
begin
  # Client
  data, status_code, headers = api_instance.client_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ManagementApi->client_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ClientResponse**](ClientResponse.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## disconnect

> <DisconnectResponse> disconnect

Disconnect token

Disconnect the token. A disconnected token will no longer return data. Data requests with a disconnected token will return a 403 Forbidden 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: access-token
  config.api_key['access-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['access-token'] = 'Bearer'
end

api_instance = OpenapiClient::ManagementApi.new

begin
  # Disconnect token
  result = api_instance.disconnect
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ManagementApi->disconnect: #{e}"
end
```

#### Using the disconnect_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisconnectResponse>, Integer, Hash)> disconnect_with_http_info

```ruby
begin
  # Disconnect token
  data, status_code, headers = api_instance.disconnect_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisconnectResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ManagementApi->disconnect_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DisconnectResponse**](DisconnectResponse.md)

### Authorization

[access-token](../README.md#access-token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## introspect

> <IntrospectResponse> introspect

Inspect token

Retrieve data about the token, such as `scopes`, `mode`, `provider`, and if it is active 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: access-token
  config.api_key['access-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['access-token'] = 'Bearer'
end

api_instance = OpenapiClient::ManagementApi.new

begin
  # Inspect token
  result = api_instance.introspect
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ManagementApi->introspect: #{e}"
end
```

#### Using the introspect_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IntrospectResponse>, Integer, Hash)> introspect_with_http_info

```ruby
begin
  # Inspect token
  data, status_code, headers = api_instance.introspect_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IntrospectResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ManagementApi->introspect_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**IntrospectResponse**](IntrospectResponse.md)

### Authorization

[access-token](../README.md#access-token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## token

> <TokenResponse> token(token_request)

Create token

Exchange an `authorization_code` for an `access_token` after receiving on from the `redirect_uri` you specifiy after a successful user connection 

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::ManagementApi.new
token_request = OpenapiClient::TokenRequest.new({client_id: '00000000-00000000-00000000-00000000', client_secret: 'ffffffff-ffffffff-ffffffff-ffffffff', grant_type: 'authorization_code', code: 'Y2xpZW50IzkzMTU4MGQwLWYwYjctNGJiOC1iYmZmLWI4MTNlYzMxNTVjYXxjb2RlIzE1MmIwYjk3LTg2ZWMtNDZlNC1hZDUyLWY5ZTAxNzE2MDIwNAo=', redirect_uri: 'https://example.com'}) # TokenRequest | 

begin
  # Create token
  result = api_instance.token(token_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ManagementApi->token: #{e}"
end
```

#### Using the token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenResponse>, Integer, Hash)> token_with_http_info(token_request)

```ruby
begin
  # Create token
  data, status_code, headers = api_instance.token_with_http_info(token_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ManagementApi->token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token_request** | [**TokenRequest**](TokenRequest.md) |  |  |

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## tokens

> Array&lt;Object&gt; tokens

Tokens

View tokens and token status for respective client 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: basic
  config.api_key['basic'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['basic'] = 'Bearer'
end

api_instance = OpenapiClient::ManagementApi.new

begin
  # Tokens
  result = api_instance.tokens
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ManagementApi->tokens: #{e}"
end
```

#### Using the tokens_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Object&gt;, Integer, Hash)> tokens_with_http_info

```ruby
begin
  # Tokens
  data, status_code, headers = api_instance.tokens_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Object&gt;
rescue OpenapiClient::ApiError => e
  puts "Error when calling ManagementApi->tokens_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Array&lt;Object&gt;**

### Authorization

[basic](../README.md#basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_client

> <ClientResponse> update_client(client_request)

Update client

Update attributes of the client.  Update the `name`, `client_secret`, or `webhook_uri` of the client 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: basic
  config.api_key['basic'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['basic'] = 'Bearer'
end

api_instance = OpenapiClient::ManagementApi.new
client_request = OpenapiClient::ClientRequest.new({client_secret: ['client_secret_example'], redirect_uris: ['redirect_uris_example'], name: 'Your App'}) # ClientRequest | 

begin
  # Update client
  result = api_instance.update_client(client_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ManagementApi->update_client: #{e}"
end
```

#### Using the update_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientResponse>, Integer, Hash)> update_client_with_http_info(client_request)

```ruby
begin
  # Update client
  data, status_code, headers = api_instance.update_client_with_http_info(client_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ManagementApi->update_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_request** | [**ClientRequest**](ClientRequest.md) |  |  |

### Return type

[**ClientResponse**](ClientResponse.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

