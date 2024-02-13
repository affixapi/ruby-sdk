# OpenapiClient::PayslipResponseDeductions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **amount** | **Float** | if USD/EUR/GBP, in cent |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PayslipResponseDeductions.new(
  name: Private Insurance Premium (Employee),
  amount: 3454
)
```

