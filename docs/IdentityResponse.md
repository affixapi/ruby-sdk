# OpenapiClient::IdentityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the individual for the respective account, if known |  |
| **email** | **String** | The email of the individual for the respective account, if known |  |
| **phone_number** | **String** | The phone number of the individual for the respective account, if known. Nullable for tokens created prior to 2023-03-05  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::IdentityResponse.new(
  name: Laurine Barton,
  email: laurine.barton@me.com,
  phone_number: 14150000000
)
```

