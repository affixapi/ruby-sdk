# OpenapiClient::PayslipResponseEarnings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **amount** | **Float** | if USD/EUR/GBP, in cent |  |
| **hours** | **Float** | hours, if applicable |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PayslipResponseEarnings.new(
  name: salary,
  amount: 834234,
  hours: 80
)
```

