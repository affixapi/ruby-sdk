# OpenapiClient::LocationNoNonNullRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Affix-assigned id of the individual |  |
| **remote_id** | **String** | the remote system-assigned id of the individual |  |
| **name** | **String** | System assigned description of the location |  |
| **type** | **String** | The location&#39;s type. In cases where there is no clear mapping, the original value passed through will be returned.  |  |
| **address** | [**AddressNoNonNullRequest**](AddressNoNonNullRequest.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::LocationNoNonNullRequest.new(
  id: cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw,
  remote_id: 19202938,
  name: NYC Office,
  type: office,
  address: null
)
```

