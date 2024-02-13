# OpenapiClient::CoreApi

All URIs are relative to *https://api.affixapi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**providers**](CoreApi.md#providers) | **GET** /providers | Providers |


## providers

> Array&lt;Object&gt; providers

Providers

Retrieve the api modes (official, developer) and providers for the respective modes 

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CoreApi.new

begin
  # Providers
  result = api_instance.providers
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CoreApi->providers: #{e}"
end
```

#### Using the providers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Object&gt;, Integer, Hash)> providers_with_http_info

```ruby
begin
  # Providers
  data, status_code, headers = api_instance.providers_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Object&gt;
rescue OpenapiClient::ApiError => e
  puts "Error when calling CoreApi->providers_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Array&lt;Object&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

