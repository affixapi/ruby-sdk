# OpenapiClient::TokenResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** | The issued access_token | [readonly] |
| **mode** | [**ModeResponse**](ModeResponse.md) |  |  |
| **provider** | [**ProviderResponse**](ProviderResponse.md) |  |  |
| **scopes** | [**Array&lt;ScopesResponse&gt;**](ScopesResponse.md) | One or more scope values indicating which parts of the user&#39;s account you wish to access.  Note, slight deviation from the OAuth 2.1 spec in that the param is scopes (plural) is used vs scope (singular)  | [readonly] |
| **token_type** | **String** | The token type to pass in the &#x60;Authorization&#x60; header | [readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TokenResponse.new(
  access_token: Y2xpZW50IzkzMTU4MGQwLWYwYjctNGJiOC1iYmZmLWI4MTNlYzMxNTVjYXx0b2tlbiM4ZDY5NzMwZi1kNzI1LTQ1ZjYtYTVlOC1mZmQ0NWE3ZjhkNDE&#x3D;,
  mode: null,
  provider: null,
  scopes: [&quot;identity&quot;,&quot;census&quot;],
  token_type: Bearer
)
```

