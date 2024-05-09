# OpenapiClient::CreateEmployeeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **employee_number** | **String** |  | [optional] |
| **first_name** | **String** | the first name of the individual |  |
| **last_name** | **String** | the last name of the individual |  |
| **display_full_name** | **String** |  | [optional] |
| **nationality** | **String** |  | [optional] |
| **job_title** | **String** |  | [optional] |
| **work_email** | **String** | the work email of the individual | [optional] |
| **personal_email** | **String** | the personal email of the individual | [optional] |
| **mobile_phone_number** | **String** | +1234567890 | [optional] |
| **tax_id** | **String** |  | [optional] |
| **gender** | **String** |  | [optional] |
| **ethnicity** | **String** |  | [optional] |
| **marital_status** | **String** |  | [optional] |
| **date_of_birth** | **Date** |  | [optional] |
| **employment_status** | [**EmploymentStatusNotNullRequest**](EmploymentStatusNotNullRequest.md) |  | [optional] |
| **employment_type** | **String** |  | [optional] |
| **start_date** | **Date** |  | [optional] |
| **termination_date** | **Date** |  | [optional] |
| **avatar** | **String** |  | [optional] |
| **home_location** | [**AddressNoNonNullRequest**](AddressNoNonNullRequest.md) |  | [optional] |
| **work_location** | [**LocationNoNonNullRequest**](LocationNoNonNullRequest.md) |  | [optional] |
| **manager** | [**CreateEmployeeRequestManager**](CreateEmployeeRequestManager.md) |  | [optional] |
| **bank_account** | [**CreateEmployeeRequestBankAccount**](CreateEmployeeRequestBankAccount.md) |  | [optional] |
| **employment_history** | [**Array&lt;EmploymentHistoryNoNonNullRequest&gt;**](EmploymentHistoryNoNonNullRequest.md) |  | [optional] |
| **compensation_history** | [**Array&lt;CompensationHistoryNoNonNullRequest&gt;**](CompensationHistoryNoNonNullRequest.md) |  | [optional] |
| **custom_fields** | **Object** |  | [optional] |
| **groups** | [**Array&lt;GroupNoNullEnumRequest&gt;**](GroupNoNullEnumRequest.md) |  | [optional] |
| **dependents** | [**Array&lt;CreateEmployeeRequestDependents&gt;**](CreateEmployeeRequestDependents.md) |  | [optional] |
| **emergency_contacts** | [**Array&lt;CreateEmployeeRequestEmergencyContacts&gt;**](CreateEmployeeRequestEmergencyContacts.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateEmployeeRequest.new(
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
  employment_status: null,
  employment_type: full_time,
  start_date: Sun Oct 11 00:00:00 UTC 2020,
  termination_date: Tue Oct 12 00:00:00 UTC 2021,
  avatar: http://alturl.com/h2h8m,
  home_location: null,
  work_location: null,
  manager: null,
  bank_account: null,
  employment_history: null,
  compensation_history: null,
  custom_fields: {&quot;t_shirt_size&quot;:&quot;medium&quot;},
  groups: [{&quot;id&quot;:&quot;4B9bKBpX5tnwjiG93TAqF7ci&quot;,&quot;remote_id&quot;:&quot;df6c28e8&quot;,&quot;name&quot;:&quot;backend&quot;,&quot;type&quot;:&quot;team&quot;},{&quot;id&quot;:&quot;132Xpnw2a38aaQG93TAqF7ci&quot;,&quot;remote_id&quot;:&quot;355c65922637&quot;,&quot;name&quot;:&quot;engineering&quot;,&quot;type&quot;:&quot;department&quot;}],
  dependents: null,
  emergency_contacts: null
)
```

