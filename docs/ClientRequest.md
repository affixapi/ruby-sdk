# OpenapiClient::ClientRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_secret** | **Array&lt;String&gt;** | The client secret(s). It is an array datatype to allow for rotation of secrets without downtime for your customers  |  |
| **redirect_uris** | **Array&lt;String&gt;** | Indicates the URI to return the user to after authorization is complete, which is the endpoint on your server to receive the authorization_code.  Must be identical to the redirect URI provided in the original link.  Please email me after signup and I will set both your client secret and redirect_uri (required) when you reach out.  |  |
| **name** | **String** | Name of your app that shows up in the Affix Connect application  |  |
| **webhook_uri** | **String** | If enabled, webhooks will be sent to this endpoint  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ClientRequest.new(
  client_secret: [&quot;ffffffff-ffffffff-ffffffff-ffffffff&quot;,&quot;aaaaaaaa-aaaaaaaa-aaaaaaaa-aaaaaaaa&quot;],
  redirect_uris: [&quot;https://app.your-company.com&quot;,&quot;https://dev.app.your-company.com&quot;],
  name: Your App,
  webhook_uri: https://webhooks.your-company.com/aaaaaaaa-aaaaaaaa-aaaaaaaa-aaaaaaaa
)
```

