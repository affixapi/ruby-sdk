# OpenapiClient::TokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | The client ID you received when you first created the application |  |
| **client_secret** | **String** | The client secret. Since there can be multiple &#x60;client_secret&#x60;s (to allow for rotation of secrets without downtime to your customers), any current &#x60;client_secret&#x60; is valid  Please email me after signup and I will set both your client secret and redirect_uri (required) when you reach out.  |  |
| **grant_type** | **String** | This is a hardcoded value required by the OAuth 2.1 spec |  |
| **code** | **String** | This is the code you received in the query string |  |
| **redirect_uri** | **String** | Indicates the URI to return the user to after authorization is complete, which is the endpoint on your server to receive the authorization_code.  Must be identical to the redirect URI provided in the original link.  Please email me after signup and I will set both your client secret and redirect_uri (required) when you reach out.  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TokenRequest.new(
  client_id: 00000000-00000000-00000000-00000000,
  client_secret: ffffffff-ffffffff-ffffffff-ffffffff,
  grant_type: authorization_code,
  code: Y2xpZW50IzkzMTU4MGQwLWYwYjctNGJiOC1iYmZmLWI4MTNlYzMxNTVjYXxjb2RlIzE1MmIwYjk3LTg2ZWMtNDZlNC1hZDUyLWY5ZTAxNzE2MDIwNAo&#x3D;,
  redirect_uri: https://example.com
)
```

