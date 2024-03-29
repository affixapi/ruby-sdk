=begin
#Affix API

#The affixapi.com API documentation.  # Introduction Affix API is an OAuth 2.1 application that allows developers to access customer data, without developers needing to manage or maintain integrations; or collect login credentials or API keys from users for these third party systems.  # OAuth 2.1 Affix API follows the [OAuth 2.1 spec](https://datatracker.ietf.org/doc/html/draft-ietf-oauth-v2-1-08).  As an OAuth application, Affix API handles not only both the collection of sensitive user credentials or API keys, but also builds and maintains the integrations with the providers, so you don't have to.  # How to obtain an access token in order to get started, you must:   - register a `client_id`   - direct your user to the sign in flow  (`https://connect.affixapi.com`     [with the appropriate query     parameters](https://github.com/affixapi/starter-kit/tree/master/connect))   - capture `authorization_code` we will send to your redirect URI after     the sign in flow is complete and exchange that `authorization_code` for     a Bearer token  # Sandbox keys (xhr mode) ### dev ``` eyJhbGciOiJFUzI1NiIsImtpZCI6Ims5RmxwSFR1YklmZWNsUU5QRVZzeFcxazFZZ0Zfbk1BWllOSGVuOFQxdGciLCJ0eXAiOiJKV1MifQ.eyJwcm92aWRlciI6InNhbmRib3giLCJzY29wZXMiOlsiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL2NvbXBhbnkiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvZW1wbG95ZWUiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvZW1wbG95ZWVzIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL2lkZW50aXR5IiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3BheXJ1bnMiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvcGF5cnVucy86cGF5cnVuX2lkIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3RpbWUtb2ZmLWJhbGFuY2VzIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3RpbWUtb2ZmLWVudHJpZXMiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvdGltZXNoZWV0cyJdLCJ0b2tlbiI6ImQ1OTZhMmYzLWYzNzktNGE1ZC1hMmRhLTk4OWJmYWViYTg1ZCIsImlhdCI6MTcwMjkyMDkwMywiaXNzIjoicHVibGljYXBpLWludGVybWVkaWF0ZS5kZXYuZW5naW5lZXJpbmcuYWZmaXhhcGkuY29tIiwic3ViIjoiZGV2ZWxvcGVyIiwiYXVkIjoiM0ZEQUVERjktMURDQTRGNTQtODc5NDlGNkEtNDEwMjc2NDMifQ.VLWYjCQvBS0C3ZA6_J3-U-idZj5EYI2IlDdTjAWBxSIHGufp6cqaVodKsF2BeIqcIeB3P0lW-KL9mY3xGd7ckQ ```  #### `employees` endpoint sample: ``` curl --fail \\   -X GET \\   -H 'Authorization: Bearer eyJhbGciOiJFUzI1NiIsImtpZCI6Ims5RmxwSFR1YklmZWNsUU5QRVZzeFcxazFZZ0Zfbk1BWllOSGVuOFQxdGciLCJ0eXAiOiJKV1MifQ.eyJwcm92aWRlciI6InNhbmRib3giLCJzY29wZXMiOlsiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL2NvbXBhbnkiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvZW1wbG95ZWUiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvZW1wbG95ZWVzIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL2lkZW50aXR5IiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3BheXJ1bnMiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvcGF5cnVucy86cGF5cnVuX2lkIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3RpbWUtb2ZmLWJhbGFuY2VzIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3RpbWUtb2ZmLWVudHJpZXMiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvdGltZXNoZWV0cyJdLCJ0b2tlbiI6ImQ1OTZhMmYzLWYzNzktNGE1ZC1hMmRhLTk4OWJmYWViYTg1ZCIsImlhdCI6MTcwMjkyMDkwMywiaXNzIjoicHVibGljYXBpLWludGVybWVkaWF0ZS5kZXYuZW5naW5lZXJpbmcuYWZmaXhhcGkuY29tIiwic3ViIjoiZGV2ZWxvcGVyIiwiYXVkIjoiM0ZEQUVERjktMURDQTRGNTQtODc5NDlGNkEtNDEwMjc2NDMifQ.VLWYjCQvBS0C3ZA6_J3-U-idZj5EYI2IlDdTjAWBxSIHGufp6cqaVodKsF2BeIqcIeB3P0lW-KL9mY3xGd7ckQ' \\   'https://dev.api.affixapi.com/2023-03-01/xhr/employees' ```  ### prod ``` eyJhbGciOiJFUzI1NiIsImtpZCI6Ims5RmxwSFR1YklmZWNsUU5QRVZzeFcxazFZZ0Zfbk1BWllOSGVuOFQxdGciLCJ0eXAiOiJKV1MifQ.eyJwcm92aWRlciI6InNhbmRib3giLCJzY29wZXMiOlsiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL2NvbXBhbnkiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvZW1wbG95ZWUiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvZW1wbG95ZWVzIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL2lkZW50aXR5IiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3BheXJ1bnMiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvcGF5cnVucy86cGF5cnVuX2lkIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3RpbWUtb2ZmLWJhbGFuY2VzIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3RpbWUtb2ZmLWVudHJpZXMiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvdGltZXNoZWV0cyJdLCJ0b2tlbiI6IjI5YjFjYTg4LWNlNjktNDgyZC1iNGZjLTkzMWMzZmJkYWM4ZSIsImlhdCI6MTcwMjkyMTA4MywiaXNzIjoicHVibGljYXBpLWludGVybWVkaWF0ZS5wcm9kLmVuZ2luZWVyaW5nLmFmZml4YXBpLmNvbSIsInN1YiI6ImRldmVsb3BlciIsImF1ZCI6IjA4QkIwODFFLUQ5QUI0RDE0LThERjk5MjMzLTY2NjE1Q0U5In0.2zdpFAmiyYiYk6MOcbXNUwwR4M1Fextnaac340x54AidiWXCyw-u9KeavbqfYF6q8a9kcDLrxhJ8Wc_3tIzuVw ```  #### `employees` endpoint sample: ``` curl --fail \\   -X GET \\   -H 'Authorization: Bearer eyJhbGciOiJFUzI1NiIsImtpZCI6Ims5RmxwSFR1YklmZWNsUU5QRVZzeFcxazFZZ0Zfbk1BWllOSGVuOFQxdGciLCJ0eXAiOiJKV1MifQ.eyJwcm92aWRlciI6InNhbmRib3giLCJzY29wZXMiOlsiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL2NvbXBhbnkiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvZW1wbG95ZWUiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvZW1wbG95ZWVzIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL2lkZW50aXR5IiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3BheXJ1bnMiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvcGF5cnVucy86cGF5cnVuX2lkIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3RpbWUtb2ZmLWJhbGFuY2VzIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3RpbWUtb2ZmLWVudHJpZXMiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvdGltZXNoZWV0cyJdLCJ0b2tlbiI6IjI5YjFjYTg4LWNlNjktNDgyZC1iNGZjLTkzMWMzZmJkYWM4ZSIsImlhdCI6MTcwMjkyMTA4MywiaXNzIjoicHVibGljYXBpLWludGVybWVkaWF0ZS5wcm9kLmVuZ2luZWVyaW5nLmFmZml4YXBpLmNvbSIsInN1YiI6ImRldmVsb3BlciIsImF1ZCI6IjA4QkIwODFFLUQ5QUI0RDE0LThERjk5MjMzLTY2NjE1Q0U5In0.2zdpFAmiyYiYk6MOcbXNUwwR4M1Fextnaac340x54AidiWXCyw-u9KeavbqfYF6q8a9kcDLrxhJ8Wc_3tIzuVw' \\   'https://api.affixapi.com/2023-03-01/xhr/employees' ```  # Compression We support `brotli`, `gzip`, and `deflate` compression algorithms.  To enable, pass the `Accept-Encoding` header with one or all of the values: `br`, `gzip`, `deflate`, or `identity` (no compression)  In the response, you will receive the `Content-Encoding` response header indicating the compression algorithm used in the data payload to enable you to decompress the result. If the `Accept-Encoding: identity` header was passed, no `Content-Encoding` response header is sent back, as no compression algorithm was used.  # Webhooks An exciting feature for HR/Payroll modes are webhooks.  If enabled, your `webhook_uri` is set on your `client_id` for the respective environment: `dev | prod`  Webhooks are configured to make live requests to the underlying integration 1x/hr, and if a difference is detected since the last request, we will send a request to your `webhook_uri` with this shape:  ``` {    added: <api.v20230301.Employees>[     <api.v20230301.Employee>{       ...,       date_of_birth: '2010-08-06',       display_full_name: 'Daija Rogahn',       employee_number: '57993',       employment_status: 'pending',       employment_type: 'other',       employments: [         {           currency: 'eur',           effective_date: '2022-02-25',           employment_type: 'other',           job_title: 'Dynamic Implementation Manager',           pay_frequency: 'semimonthly',           pay_period: 'YEAR',           pay_rate: 96000,         },       ],       first_name: 'Daija',       ...     }   ],   removed: [],   updated: [     <api.v20230301.Employee>{       ...,       date_of_birth: '2009-11-09',       display_full_name: 'Lourdes Stiedemann',       employee_number: '63189',       employment_status: 'leave',       employment_type: 'full_time',       employments: [         {           currency: 'gbp',           effective_date: '2023-01-16',           employment_type: 'full_time',           job_title: 'Forward Brand Planner',           pay_frequency: 'semimonthly',           pay_period: 'YEAR',           pay_rate: 86000,         },       ],       first_name: 'Lourdes',     }   ] } ```  the following headers will be sent with webhook requests:  ``` x-affix-api-signature: ab8474e609db95d5df3adc39ea3add7a7544bd215c5c520a30a650ae93a2fba7  x-affix-api-origin:  webhooks-employees-webhook  user-agent:  affixapi.com ```  Before trusting the payload, you should sign the payload and verify the signature matches the signature sent by the `affixapi.com` service.  This secures that the data sent to your `webhook_uri` is from the `affixapi.com` server.  The signature is created by combining the signing secret (your `client_secret`) with the body of the request sent using a standard HMAC-SHA256 keyed hash.  The signature can be created via:   - create an `HMAC` with your `client_secret`   - update the `HMAC` with the payload   - get the hex digest -> this is the signature  Sample `typescript` code that follows this recipe:  ``` import { createHmac } from 'crypto';  export const computeSignature = ({   str,   signingSecret, }: {   signingSecret: string;   str: string; }): string => {   const hmac = createHmac('sha256', signingSecret);   hmac.update(str);   const signature = hmac.digest('hex');    return signature; }; ```  While verifying the Affix API signature header should be your primary method of confirming validity, you can also whitelist our outbound webhook static IP addresses.  ``` dev:   - 52.210.169.82   - 52.210.38.77   - 3.248.135.204  prod:   - 52.51.160.102   - 54.220.83.244   - 3.254.213.171 ```  ## Rate limits Open endpoints (not gated by an API key) (applied at endpoint level):   - 15 requests every 1 minute (by IP address)   - 25 requests every 5 minutes (by IP address)  Gated endpoints (require an API key) (applied at endpoint level):   - 40 requests every 1 minute (by IP address)   - 40 requests every 5 minutes (by `client_id`)  Things to keep in mind:   - Open endpoints (not gated by an API key) will likely be called by your     users, not you, so rate limits generally would not apply to you.   - As a developer, rate limits are applied at the endpoint granularity.     - For example, say the rate limits below are 10 requests per minute by ip.       from that same ip, within 1 minute, you get:       - 10 requests per minute on `/orders`,       - another 10 requests per minute on `/items`,       - and another 10 requests per minute on `/identity`,       - for a total of 30 requests per minute. 

The version of the OpenAPI document: 2023-03-01
Contact: developers@affixapi.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'cgi'

module OpenapiClient
  class Class20230301Api
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Company
    # Retrieve company information 
    # @param [Hash] opts the optional parameters
    # @return [Array<CompanyResponse>]
    def official_companies20230301(opts = {})
      data, _status_code, _headers = official_companies20230301_with_http_info(opts)
      data
    end

    # Company
    # Retrieve company information 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<CompanyResponse>, Integer, Hash)>] Array<CompanyResponse> data, response status code and response headers
    def official_companies20230301_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class20230301Api.official_companies20230301 ...'
      end
      # resource path
      local_var_path = '/2023-03-01/official/company'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<CompanyResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['access-token']

      new_options = opts.merge(
        :operation => :"Class20230301Api.official_companies20230301",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class20230301Api#official_companies20230301\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Employee
    # Creates a new Employee 
    # @param create_employee_request [CreateEmployeeRequest] 
    # @param [Hash] opts the optional parameters
    # @return [EmployeeResponse]
    def official_create_employee20230301(create_employee_request, opts = {})
      data, _status_code, _headers = official_create_employee20230301_with_http_info(create_employee_request, opts)
      data
    end

    # Create Employee
    # Creates a new Employee 
    # @param create_employee_request [CreateEmployeeRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmployeeResponse, Integer, Hash)>] EmployeeResponse data, response status code and response headers
    def official_create_employee20230301_with_http_info(create_employee_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class20230301Api.official_create_employee20230301 ...'
      end
      # verify the required parameter 'create_employee_request' is set
      if @api_client.config.client_side_validation && create_employee_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_employee_request' when calling Class20230301Api.official_create_employee20230301"
      end
      # resource path
      local_var_path = '/2023-03-01/official/employee'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_employee_request)

      # return_type
      return_type = opts[:debug_return_type] || 'EmployeeResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['access-token']

      new_options = opts.merge(
        :operation => :"Class20230301Api.official_create_employee20230301",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class20230301Api#official_create_employee20230301\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Employees
    # List the individuals (employees, contractors, accountants, and others) listed in the HRIS/Payroll software 
    # @param [Hash] opts the optional parameters
    # @return [Array<EmployeeResponse>]
    def official_employees20230301(opts = {})
      data, _status_code, _headers = official_employees20230301_with_http_info(opts)
      data
    end

    # Employees
    # List the individuals (employees, contractors, accountants, and others) listed in the HRIS/Payroll software 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<EmployeeResponse>, Integer, Hash)>] Array<EmployeeResponse> data, response status code and response headers
    def official_employees20230301_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class20230301Api.official_employees20230301 ...'
      end
      # resource path
      local_var_path = '/2023-03-01/official/employees'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<EmployeeResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['access-token']

      new_options = opts.merge(
        :operation => :"Class20230301Api.official_employees20230301",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class20230301Api#official_employees20230301\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Groups
    # The Group object is used to represent any subset of employees, such as PayGroup, Team, or Department. Employees can be in multiple Groups. 
    # @param [Hash] opts the optional parameters
    # @return [Array<GroupResponse>]
    def official_groups20230301(opts = {})
      data, _status_code, _headers = official_groups20230301_with_http_info(opts)
      data
    end

    # Groups
    # The Group object is used to represent any subset of employees, such as PayGroup, Team, or Department. Employees can be in multiple Groups. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<GroupResponse>, Integer, Hash)>] Array<GroupResponse> data, response status code and response headers
    def official_groups20230301_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class20230301Api.official_groups20230301 ...'
      end
      # resource path
      local_var_path = '/2023-03-01/official/groups'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<GroupResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['access-token']

      new_options = opts.merge(
        :operation => :"Class20230301Api.official_groups20230301",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class20230301Api#official_groups20230301\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Time off balances
    # Retrieve all time off balances. 
    # @param [Hash] opts the optional parameters
    # @return [Array<TimeOffBalanceResponse>]
    def official_time_off_balances20230301(opts = {})
      data, _status_code, _headers = official_time_off_balances20230301_with_http_info(opts)
      data
    end

    # Time off balances
    # Retrieve all time off balances. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TimeOffBalanceResponse>, Integer, Hash)>] Array<TimeOffBalanceResponse> data, response status code and response headers
    def official_time_off_balances20230301_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class20230301Api.official_time_off_balances20230301 ...'
      end
      # resource path
      local_var_path = '/2023-03-01/official/time-off-balances'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<TimeOffBalanceResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['access-token']

      new_options = opts.merge(
        :operation => :"Class20230301Api.official_time_off_balances20230301",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class20230301Api#official_time_off_balances20230301\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Time off entries
    # Retrieve time off / absence entries 
    # @param [Hash] opts the optional parameters
    # @return [Array<TimeOffEntryResponse>]
    def official_time_off_entries20230301(opts = {})
      data, _status_code, _headers = official_time_off_entries20230301_with_http_info(opts)
      data
    end

    # Time off entries
    # Retrieve time off / absence entries 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TimeOffEntryResponse>, Integer, Hash)>] Array<TimeOffEntryResponse> data, response status code and response headers
    def official_time_off_entries20230301_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class20230301Api.official_time_off_entries20230301 ...'
      end
      # resource path
      local_var_path = '/2023-03-01/official/time-off-entries'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<TimeOffEntryResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['access-token']

      new_options = opts.merge(
        :operation => :"Class20230301Api.official_time_off_entries20230301",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class20230301Api#official_time_off_entries20230301\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Timesheets
    # Retrieve Timesheets 
    # @param [Hash] opts the optional parameters
    # @return [Array<TimesheetResponse>]
    def official_timesheets20230301(opts = {})
      data, _status_code, _headers = official_timesheets20230301_with_http_info(opts)
      data
    end

    # Timesheets
    # Retrieve Timesheets 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TimesheetResponse>, Integer, Hash)>] Array<TimesheetResponse> data, response status code and response headers
    def official_timesheets20230301_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class20230301Api.official_timesheets20230301 ...'
      end
      # resource path
      local_var_path = '/2023-03-01/official/timesheets'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<TimesheetResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['access-token']

      new_options = opts.merge(
        :operation => :"Class20230301Api.official_timesheets20230301",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class20230301Api#official_timesheets20230301\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Work locations
    # The Location object is used to represent an address that can be associated with an employee 
    # @param [Hash] opts the optional parameters
    # @return [Array<LocationResponse>]
    def official_work_locations20230301(opts = {})
      data, _status_code, _headers = official_work_locations20230301_with_http_info(opts)
      data
    end

    # Work locations
    # The Location object is used to represent an address that can be associated with an employee 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<LocationResponse>, Integer, Hash)>] Array<LocationResponse> data, response status code and response headers
    def official_work_locations20230301_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class20230301Api.official_work_locations20230301 ...'
      end
      # resource path
      local_var_path = '/2023-03-01/official/work-locations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<LocationResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['access-token']

      new_options = opts.merge(
        :operation => :"Class20230301Api.official_work_locations20230301",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class20230301Api#official_work_locations20230301\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Identity
    # List information of the user for the respective account 
    # @param [Hash] opts the optional parameters
    # @return [IdentityResponse]
    def officialdentity20230301(opts = {})
      data, _status_code, _headers = officialdentity20230301_with_http_info(opts)
      data
    end

    # Identity
    # List information of the user for the respective account 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IdentityResponse, Integer, Hash)>] IdentityResponse data, response status code and response headers
    def officialdentity20230301_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class20230301Api.officialdentity20230301 ...'
      end
      # resource path
      local_var_path = '/2023-03-01/official/identity'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'IdentityResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['access-token']

      new_options = opts.merge(
        :operation => :"Class20230301Api.officialdentity20230301",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class20230301Api#officialdentity20230301\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Company
    # Retrieve company information 
    # @param [Hash] opts the optional parameters
    # @return [Array<CompanyResponse>]
    def xhr_companies20230301(opts = {})
      data, _status_code, _headers = xhr_companies20230301_with_http_info(opts)
      data
    end

    # Company
    # Retrieve company information 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<CompanyResponse>, Integer, Hash)>] Array<CompanyResponse> data, response status code and response headers
    def xhr_companies20230301_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class20230301Api.xhr_companies20230301 ...'
      end
      # resource path
      local_var_path = '/2023-03-01/xhr/company'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<CompanyResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['access-token']

      new_options = opts.merge(
        :operation => :"Class20230301Api.xhr_companies20230301",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class20230301Api#xhr_companies20230301\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create employee
    # Creates a new Employee 
    # @param create_employee_request [CreateEmployeeRequest] 
    # @param [Hash] opts the optional parameters
    # @return [EmployeeResponse]
    def xhr_create_employee20230301(create_employee_request, opts = {})
      data, _status_code, _headers = xhr_create_employee20230301_with_http_info(create_employee_request, opts)
      data
    end

    # Create employee
    # Creates a new Employee 
    # @param create_employee_request [CreateEmployeeRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmployeeResponse, Integer, Hash)>] EmployeeResponse data, response status code and response headers
    def xhr_create_employee20230301_with_http_info(create_employee_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class20230301Api.xhr_create_employee20230301 ...'
      end
      # verify the required parameter 'create_employee_request' is set
      if @api_client.config.client_side_validation && create_employee_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_employee_request' when calling Class20230301Api.xhr_create_employee20230301"
      end
      # resource path
      local_var_path = '/2023-03-01/xhr/employee'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_employee_request)

      # return_type
      return_type = opts[:debug_return_type] || 'EmployeeResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['access-token']

      new_options = opts.merge(
        :operation => :"Class20230301Api.xhr_create_employee20230301",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class20230301Api#xhr_create_employee20230301\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Employees
    # List the individuals (employees, contractors, accountants, and others) listed in the HRIS/Payroll software 
    # @param [Hash] opts the optional parameters
    # @return [Array<EmployeeResponse>]
    def xhr_employees20230301(opts = {})
      data, _status_code, _headers = xhr_employees20230301_with_http_info(opts)
      data
    end

    # Employees
    # List the individuals (employees, contractors, accountants, and others) listed in the HRIS/Payroll software 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<EmployeeResponse>, Integer, Hash)>] Array<EmployeeResponse> data, response status code and response headers
    def xhr_employees20230301_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class20230301Api.xhr_employees20230301 ...'
      end
      # resource path
      local_var_path = '/2023-03-01/xhr/employees'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<EmployeeResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['access-token']

      new_options = opts.merge(
        :operation => :"Class20230301Api.xhr_employees20230301",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class20230301Api#xhr_employees20230301\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Groups
    # The Group object is used to represent any subset of employees, such as PayGroup, Team, or Department. Employees can be in multiple Groups. 
    # @param [Hash] opts the optional parameters
    # @return [Array<GroupResponse>]
    def xhr_groups20230301(opts = {})
      data, _status_code, _headers = xhr_groups20230301_with_http_info(opts)
      data
    end

    # Groups
    # The Group object is used to represent any subset of employees, such as PayGroup, Team, or Department. Employees can be in multiple Groups. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<GroupResponse>, Integer, Hash)>] Array<GroupResponse> data, response status code and response headers
    def xhr_groups20230301_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class20230301Api.xhr_groups20230301 ...'
      end
      # resource path
      local_var_path = '/2023-03-01/xhr/groups'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<GroupResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['access-token']

      new_options = opts.merge(
        :operation => :"Class20230301Api.xhr_groups20230301",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class20230301Api#xhr_groups20230301\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Identity
    # List information of the user for the respective account 
    # @param [Hash] opts the optional parameters
    # @return [IdentityResponse]
    def xhr_identity20230301(opts = {})
      data, _status_code, _headers = xhr_identity20230301_with_http_info(opts)
      data
    end

    # Identity
    # List information of the user for the respective account 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IdentityResponse, Integer, Hash)>] IdentityResponse data, response status code and response headers
    def xhr_identity20230301_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class20230301Api.xhr_identity20230301 ...'
      end
      # resource path
      local_var_path = '/2023-03-01/xhr/identity'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'IdentityResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['access-token']

      new_options = opts.merge(
        :operation => :"Class20230301Api.xhr_identity20230301",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class20230301Api#xhr_identity20230301\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Payruns
    # List all the pay runs that occurred during the respective period.  Supported integrations:   - sageone   - simplepay.ie   - brightpay connect 
    # @param start_date [Date] The start date of the search period
    # @param end_date [Date] The end date of the search period
    # @param [Hash] opts the optional parameters
    # @return [Array<PayrunResponse>]
    def xhr_payruns20230301(start_date, end_date, opts = {})
      data, _status_code, _headers = xhr_payruns20230301_with_http_info(start_date, end_date, opts)
      data
    end

    # Payruns
    # List all the pay runs that occurred during the respective period.  Supported integrations:   - sageone   - simplepay.ie   - brightpay connect 
    # @param start_date [Date] The start date of the search period
    # @param end_date [Date] The end date of the search period
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<PayrunResponse>, Integer, Hash)>] Array<PayrunResponse> data, response status code and response headers
    def xhr_payruns20230301_with_http_info(start_date, end_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class20230301Api.xhr_payruns20230301 ...'
      end
      # verify the required parameter 'start_date' is set
      if @api_client.config.client_side_validation && start_date.nil?
        fail ArgumentError, "Missing the required parameter 'start_date' when calling Class20230301Api.xhr_payruns20230301"
      end
      # verify the required parameter 'end_date' is set
      if @api_client.config.client_side_validation && end_date.nil?
        fail ArgumentError, "Missing the required parameter 'end_date' when calling Class20230301Api.xhr_payruns20230301"
      end
      # resource path
      local_var_path = '/2023-03-01/xhr/payruns'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'start_date'] = start_date
      query_params[:'end_date'] = end_date

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<PayrunResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['access-token']

      new_options = opts.merge(
        :operation => :"Class20230301Api.xhr_payruns20230301",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class20230301Api#xhr_payruns20230301\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Payslips
    # Retrieves payslips from a specific payrun.  Supported integrations:   - sageone   - simplepay.ie   - brightpay connect 
    # @param payrun_id [String] The id of the payrun.
    # @param [Hash] opts the optional parameters
    # @return [Array<PayslipResponse>]
    def xhr_payslips20230301(payrun_id, opts = {})
      data, _status_code, _headers = xhr_payslips20230301_with_http_info(payrun_id, opts)
      data
    end

    # Payslips
    # Retrieves payslips from a specific payrun.  Supported integrations:   - sageone   - simplepay.ie   - brightpay connect 
    # @param payrun_id [String] The id of the payrun.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<PayslipResponse>, Integer, Hash)>] Array<PayslipResponse> data, response status code and response headers
    def xhr_payslips20230301_with_http_info(payrun_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class20230301Api.xhr_payslips20230301 ...'
      end
      # verify the required parameter 'payrun_id' is set
      if @api_client.config.client_side_validation && payrun_id.nil?
        fail ArgumentError, "Missing the required parameter 'payrun_id' when calling Class20230301Api.xhr_payslips20230301"
      end
      # resource path
      local_var_path = '/2023-03-01/xhr/payruns/{payrun_id}'.sub('{' + 'payrun_id' + '}', CGI.escape(payrun_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<PayslipResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['access-token']

      new_options = opts.merge(
        :operation => :"Class20230301Api.xhr_payslips20230301",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class20230301Api#xhr_payslips20230301\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Time off balances
    # Retrieve all time off balances. 
    # @param [Hash] opts the optional parameters
    # @return [Array<TimeOffBalanceResponse>]
    def xhr_time_off_balances20230301(opts = {})
      data, _status_code, _headers = xhr_time_off_balances20230301_with_http_info(opts)
      data
    end

    # Time off balances
    # Retrieve all time off balances. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TimeOffBalanceResponse>, Integer, Hash)>] Array<TimeOffBalanceResponse> data, response status code and response headers
    def xhr_time_off_balances20230301_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class20230301Api.xhr_time_off_balances20230301 ...'
      end
      # resource path
      local_var_path = '/2023-03-01/xhr/time-off-balances'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<TimeOffBalanceResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['access-token']

      new_options = opts.merge(
        :operation => :"Class20230301Api.xhr_time_off_balances20230301",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class20230301Api#xhr_time_off_balances20230301\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Time off entries
    # Retrieve time off / absence entries 
    # @param [Hash] opts the optional parameters
    # @return [Array<TimeOffEntryResponse>]
    def xhr_time_off_entries20230301(opts = {})
      data, _status_code, _headers = xhr_time_off_entries20230301_with_http_info(opts)
      data
    end

    # Time off entries
    # Retrieve time off / absence entries 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TimeOffEntryResponse>, Integer, Hash)>] Array<TimeOffEntryResponse> data, response status code and response headers
    def xhr_time_off_entries20230301_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class20230301Api.xhr_time_off_entries20230301 ...'
      end
      # resource path
      local_var_path = '/2023-03-01/xhr/time-off-entries'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<TimeOffEntryResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['access-token']

      new_options = opts.merge(
        :operation => :"Class20230301Api.xhr_time_off_entries20230301",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class20230301Api#xhr_time_off_entries20230301\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Timesheets
    # Retrieve Timesheets 
    # @param [Hash] opts the optional parameters
    # @return [Array<TimesheetResponse>]
    def xhr_timesheets20230301(opts = {})
      data, _status_code, _headers = xhr_timesheets20230301_with_http_info(opts)
      data
    end

    # Timesheets
    # Retrieve Timesheets 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TimesheetResponse>, Integer, Hash)>] Array<TimesheetResponse> data, response status code and response headers
    def xhr_timesheets20230301_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class20230301Api.xhr_timesheets20230301 ...'
      end
      # resource path
      local_var_path = '/2023-03-01/xhr/timesheets'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<TimesheetResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['access-token']

      new_options = opts.merge(
        :operation => :"Class20230301Api.xhr_timesheets20230301",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class20230301Api#xhr_timesheets20230301\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Work locations
    # The Location object is used to represent an address that can be associated with an employee 
    # @param [Hash] opts the optional parameters
    # @return [Array<LocationResponse>]
    def xhr_work_locations20230301(opts = {})
      data, _status_code, _headers = xhr_work_locations20230301_with_http_info(opts)
      data
    end

    # Work locations
    # The Location object is used to represent an address that can be associated with an employee 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<LocationResponse>, Integer, Hash)>] Array<LocationResponse> data, response status code and response headers
    def xhr_work_locations20230301_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class20230301Api.xhr_work_locations20230301 ...'
      end
      # resource path
      local_var_path = '/2023-03-01/xhr/work-locations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<LocationResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['access-token']

      new_options = opts.merge(
        :operation => :"Class20230301Api.xhr_work_locations20230301",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class20230301Api#xhr_work_locations20230301\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
