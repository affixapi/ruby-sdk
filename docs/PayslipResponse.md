# OpenapiClient::PayslipResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Affix-assigned id of the payslip |  |
| **remote_id** | **String** | the remote system-assigned id of the payrun |  |
| **employee_id** | **String** |  |  |
| **employee_remote_id** | **String** |  |  |
| **payrun_id** | **String** |  |  |
| **payrun_remote_id** | **String** |  |  |
| **payrun_type** | [**PayrunTypeResponse**](PayrunTypeResponse.md) |  |  |
| **currency** | [**CurrencyNotNullResponse**](CurrencyNotNullResponse.md) |  |  |
| **gross_pay** | **Float** | if USD/EUR/GBP, in cent |  |
| **net_pay** | **Float** | if USD/EUR/GBP, in cent |  |
| **start_date** | **Date** |  |  |
| **end_date** | **Date** |  |  |
| **payment_date** | **Date** |  |  |
| **earnings** | [**Array&lt;PayslipResponseEarnings&gt;**](PayslipResponseEarnings.md) |  |  |
| **contributions** | [**Array&lt;PayslipResponseContributions&gt;**](PayslipResponseContributions.md) | Items paid by the employer that are not included in gross pay, such as employer-paid portion of private health insurance  |  |
| **deductions** | [**Array&lt;PayslipResponseDeductions&gt;**](PayslipResponseDeductions.md) |  |  |
| **taxes** | [**Array&lt;PayslipResponseTaxes&gt;**](PayslipResponseTaxes.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PayslipResponse.new(
  id: cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw,
  remote_id: 19202938,
  employee_id: d2f972d0-2526-434b-9409-4c3b468e08f0,
  employee_remote_id: 19202938,
  payrun_id: 35347df1-95e7-46e2-93cc-66f1191edca5,
  payrun_remote_id: 19202938,
  payrun_type: null,
  currency: null,
  gross_pay: 134267,
  net_pay: 86578,
  start_date: Wed Jan 01 00:00:00 UTC 2020,
  end_date: Fri Jan 31 00:00:00 UTC 2020,
  payment_date: Mon Jan 27 00:00:00 UTC 2020,
  earnings: [{&quot;amount&quot;:100234,&quot;name&quot;:&quot;SALARY&quot;,&quot;hours&quot;:80},{&quot;amount&quot;:834234,&quot;name&quot;:&quot;OVERTIME&quot;,&quot;hours&quot;:8}],
  contributions: [{&quot;name&quot;:&quot;Private Health Insurance (Employer)&quot;,&quot;amount&quot;:13454},{&quot;name&quot;:&quot;Transportation allowance benefit (Employer)&quot;,&quot;amount&quot;:3454},{&quot;name&quot;:&quot;Other (Employer)&quot;,&quot;amount&quot;:3454}],
  deductions: [{&quot;name&quot;:&quot;Transportation allowance benefit&quot;,&quot;amount&quot;:3454},{&quot;name&quot;:&quot;Private Health Insurance (Employee)&quot;,&quot;amount&quot;:3454}],
  taxes: [{&quot;name&quot;:&quot;PRSI&quot;,&quot;amount&quot;:725,&quot;employer_tax&quot;:false},{&quot;name&quot;:&quot;PSC (Class S)&quot;,&quot;amount&quot;:125,&quot;employer_tax&quot;:false},{&quot;name&quot;:&quot;Income Tax&quot;,&quot;amount&quot;:10025,&quot;employer_tax&quot;:false},{&quot;name&quot;:&quot;Payroll Tax&quot;,&quot;amount&quot;:10025,&quot;employer_tax&quot;:true}]
)
```

