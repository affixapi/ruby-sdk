# OpenapiClient::EmployeeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Affix-assigned id of the individual | [readonly] |
| **remote_id** | **String** | the remote system-assigned id of the individual | [readonly] |
| **employee_number** | **String** |  |  |
| **first_name** | **String** | the first name of the individual |  |
| **last_name** | **String** | the last name of the individual |  |
| **display_full_name** | **String** |  |  |
| **nationality** | **String** |  |  |
| **job_title** | **String** |  |  |
| **work_email** | **String** | the work email of the individual |  |
| **personal_email** | **String** | the personal email of the individual |  |
| **mobile_phone_number** | **String** | +1234567890 |  |
| **tax_id** | **String** |  |  |
| **gender** | **String** |  |  |
| **ethnicity** | **String** |  |  |
| **marital_status** | **String** |  |  |
| **date_of_birth** | **Date** |  |  |
| **employment_status** | **String** |  |  |
| **employment_type** | **String** |  |  |
| **start_date** | **Date** |  |  |
| **remote_created_at** | **Date** |  | [readonly] |
| **termination_date** | **Date** |  |  |
| **avatar** | **String** |  |  |
| **home_location** | [**AddressResponse**](AddressResponse.md) |  |  |
| **work_location** | [**LocationResponse**](LocationResponse.md) |  |  |
| **manager** | [**CreateEmployeeRequestManager**](CreateEmployeeRequestManager.md) |  |  |
| **bank_account** | [**CreateEmployeeRequestBankAccount**](CreateEmployeeRequestBankAccount.md) |  |  |
| **employments** | [**Array&lt;EmploymentResponse&gt;**](EmploymentResponse.md) |  |  |
| **custom_fields** | **Object** |  |  |
| **groups** | [**Array&lt;GroupResponse&gt;**](GroupResponse.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EmployeeResponse.new(
  id: cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw,
  remote_id: 19202938,
  employee_number: 2,
  first_name: Greg,
  last_name: Hirsch,
  display_full_name: Hirsch,
  nationality: Irish,
  job_title: Software developer,
  work_email: greg@affixapi.com,
  personal_email: greg@gmail.com,
  mobile_phone_number: Hirsch,
  tax_id: 1234567890,
  gender: male,
  ethnicity: white,
  marital_status: single,
  date_of_birth: Sat Nov 10 00:00:00 UTC 1990,
  employment_status: active,
  employment_type: full_time,
  start_date: Sun Oct 11 00:00:00 UTC 2020,
  remote_created_at: Sun Oct 11 00:00:00 UTC 2020,
  termination_date: Tue Oct 12 00:00:00 UTC 2021,
  avatar: http://alturl.com/h2h8m,
  home_location: null,
  work_location: null,
  manager: null,
  bank_account: null,
  employments: null,
  custom_fields: {&quot;t_shirt_size&quot;:&quot;medium&quot;},
  groups: [{&quot;id&quot;:&quot;4B9bKBpX5tnwjiG93TAqF7ci&quot;,&quot;remote_id&quot;:&quot;df6c28e8&quot;,&quot;name&quot;:&quot;backend&quot;,&quot;type&quot;:&quot;team&quot;},{&quot;id&quot;:&quot;132Xpnw2a38aaQG93TAqF7ci&quot;,&quot;remote_id&quot;:&quot;355c65922637&quot;,&quot;name&quot;:&quot;engineering&quot;,&quot;type&quot;:&quot;department&quot;}]
)
```

