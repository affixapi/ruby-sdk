# OpenapiClient::DisconnectResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disconnected** | **Boolean** | The access token has been disconnected and is no longer allowed to be used by your application | [readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DisconnectResponse.new(
  disconnected: true
)
```

