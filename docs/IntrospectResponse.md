# OpenapiClient::IntrospectResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | The client ID you received when you first created the application | [readonly] |
| **mode** | [**ModeResponse**](ModeResponse.md) |  |  |
| **provider** | [**ProviderResponse**](ProviderResponse.md) |  |  |
| **scopes** | [**Array&lt;ScopesResponse&gt;**](ScopesResponse.md) | One or more scope values indicating which parts of the user&#39;s account you wish to access.  Note, slight deviation from the OAuth 2.1 spec in that the param is scopes (plural) is used vs scope (singular)  | [readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::IntrospectResponse.new(
  client_id: 00000000-00000000-00000000-00000000,
  mode: null,
  provider: null,
  scopes: [&quot;identity&quot;,&quot;census&quot;]
)
```

