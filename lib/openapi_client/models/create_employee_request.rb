=begin
#Affix API

#The affixapi.com API documentation.  # Introduction Affix API is an OAuth 2.1 application that allows developers to access customer data, without developers needing to manage or maintain integrations; or collect login credentials or API keys from users for these third party systems.  # OAuth 2.1 Affix API follows the [OAuth 2.1 spec](https://datatracker.ietf.org/doc/html/draft-ietf-oauth-v2-1-08).  As an OAuth application, Affix API handles not only both the collection of sensitive user credentials or API keys, but also builds and maintains the integrations with the providers, so you don't have to.  # How to obtain an access token in order to get started, you must:   - register a `client_id`   - direct your user to the sign in flow  (`https://connect.affixapi.com`     [with the appropriate query     parameters](https://github.com/affixapi/starter-kit/tree/master/connect))   - capture `authorization_code` we will send to your redirect URI after     the sign in flow is complete and exchange that `authorization_code` for     a Bearer token  # Sandbox keys (xhr mode) ### dev ``` eyJhbGciOiJFUzI1NiIsImtpZCI6Ims5RmxwSFR1YklmZWNsUU5QRVZzeFcxazFZZ0Zfbk1BWllOSGVuOFQxdGciLCJ0eXAiOiJKV1MifQ.eyJwcm92aWRlciI6InNhbmRib3giLCJzY29wZXMiOlsiLzIwMjMtMDMtMDEveGhyL2NvbXBhbnkiLCIvMjAyMy0wMy0wMS94aHIvZW1wbG95ZWUiLCIvMjAyMy0wMy0wMS94aHIvZW1wbG95ZWVzIiwiLzIwMjMtMDMtMDEveGhyL2dyb3VwcyIsIi8yMDIzLTAzLTAxL3hoci9pZGVudGl0eSIsIi8yMDIzLTAzLTAxL3hoci9wYXlydW5zIiwiLzIwMjMtMDMtMDEveGhyL3BheXJ1bnMvOnBheXJ1bl9pZCIsIi8yMDIzLTAzLTAxL3hoci90aW1lLW9mZi1iYWxhbmNlcyIsIi8yMDIzLTAzLTAxL3hoci90aW1lLW9mZi1lbnRyaWVzIiwiLzIwMjMtMDMtMDEveGhyL3RpbWVzaGVldHMiLCIvMjAyMy0wMy0wMS94aHIvd29yay1sb2NhdGlvbnMiXSwidG9rZW4iOiIzODIzNTNlMi05N2ZiLTRmMWEtOTYxYy0zZDI5OTViNzYxMTUiLCJpYXQiOjE3MTE4MTA3MTQsImlzcyI6InB1YmxpY2FwaS1pbnRlcm1lZGlhdGUuZGV2LmVuZ2luZWVyaW5nLmFmZml4YXBpLmNvbSIsInN1YiI6InhociIsImF1ZCI6IjNGREFFREY5LTFEQ0E0RjU0LTg3OTQ5RjZBLTQxMDI3NjQzIn0.zUJPaT6IxcIdr8b9iO6u-Rr5I-ohTHPYTrQGrgOFghbEbovItiwr9Wk479GnJVJc3WR8bxAwUMAE4Ul6Okdk6Q ```  #### `employees` endpoint sample: ``` curl --fail \\   -X GET \\   -H 'Authorization: Bearer eyJhbGciOiJFUzI1NiIsImtpZCI6Ims5RmxwSFR1YklmZWNsUU5QRVZzeFcxazFZZ0Zfbk1BWllOSGVuOFQxdGciLCJ0eXAiOiJKV1MifQ.eyJwcm92aWRlciI6InNhbmRib3giLCJzY29wZXMiOlsiLzIwMjMtMDMtMDEveGhyL2NvbXBhbnkiLCIvMjAyMy0wMy0wMS94aHIvZW1wbG95ZWUiLCIvMjAyMy0wMy0wMS94aHIvZW1wbG95ZWVzIiwiLzIwMjMtMDMtMDEveGhyL2dyb3VwcyIsIi8yMDIzLTAzLTAxL3hoci9pZGVudGl0eSIsIi8yMDIzLTAzLTAxL3hoci9wYXlydW5zIiwiLzIwMjMtMDMtMDEveGhyL3BheXJ1bnMvOnBheXJ1bl9pZCIsIi8yMDIzLTAzLTAxL3hoci90aW1lLW9mZi1iYWxhbmNlcyIsIi8yMDIzLTAzLTAxL3hoci90aW1lLW9mZi1lbnRyaWVzIiwiLzIwMjMtMDMtMDEveGhyL3RpbWVzaGVldHMiLCIvMjAyMy0wMy0wMS94aHIvd29yay1sb2NhdGlvbnMiXSwidG9rZW4iOiIzODIzNTNlMi05N2ZiLTRmMWEtOTYxYy0zZDI5OTViNzYxMTUiLCJpYXQiOjE3MTE4MTA3MTQsImlzcyI6InB1YmxpY2FwaS1pbnRlcm1lZGlhdGUuZGV2LmVuZ2luZWVyaW5nLmFmZml4YXBpLmNvbSIsInN1YiI6InhociIsImF1ZCI6IjNGREFFREY5LTFEQ0E0RjU0LTg3OTQ5RjZBLTQxMDI3NjQzIn0.zUJPaT6IxcIdr8b9iO6u-Rr5I-ohTHPYTrQGrgOFghbEbovItiwr9Wk479GnJVJc3WR8bxAwUMAE4Ul6Okdk6Q' \\   'https://dev.api.affixapi.com/2023-03-01/xhr/employees' ```  ### prod ``` eyJhbGciOiJFUzI1NiIsImtpZCI6Ims5RmxwSFR1YklmZWNsUU5QRVZzeFcxazFZZ0Zfbk1BWllOSGVuOFQxdGciLCJ0eXAiOiJKV1MifQ.eyJwcm92aWRlciI6InNhbmRib3giLCJzY29wZXMiOlsiLzIwMjMtMDMtMDEveGhyL2NvbXBhbnkiLCIvMjAyMy0wMy0wMS94aHIvZW1wbG95ZWUiLCIvMjAyMy0wMy0wMS94aHIvZW1wbG95ZWVzIiwiLzIwMjMtMDMtMDEveGhyL2dyb3VwcyIsIi8yMDIzLTAzLTAxL3hoci9pZGVudGl0eSIsIi8yMDIzLTAzLTAxL3hoci9wYXlydW5zIiwiLzIwMjMtMDMtMDEveGhyL3BheXJ1bnMvOnBheXJ1bl9pZCIsIi8yMDIzLTAzLTAxL3hoci90aW1lLW9mZi1iYWxhbmNlcyIsIi8yMDIzLTAzLTAxL3hoci90aW1lLW9mZi1lbnRyaWVzIiwiLzIwMjMtMDMtMDEveGhyL3RpbWVzaGVldHMiLCIvMjAyMy0wMy0wMS94aHIvd29yay1sb2NhdGlvbnMiXSwidG9rZW4iOiIzYjg4MDc2NC1kMGFmLTQ5ZDAtOGM5OS00YzIwYjE2MTJjOTMiLCJpYXQiOjE3MTE4MTA4NTgsImlzcyI6InB1YmxpY2FwaS1pbnRlcm1lZGlhdGUucHJvZC5lbmdpbmVlcmluZy5hZmZpeGFwaS5jb20iLCJzdWIiOiJ4aHIiLCJhdWQiOiIwOEJCMDgxRS1EOUFCNEQxNC04REY5OTIzMy02NjYxNUNFOSJ9.n3pJmmfegU21Tko_TyUyCHi4ITvfd75T8NFFTHmf1r8AI8yCUYTWdfNjyZZWcZD6z50I3Wsk2rAd8GDWXn4vlg ```  #### `employees` endpoint sample: ``` curl --fail \\   -X GET \\   -H 'Authorization: Bearer eyJhbGciOiJFUzI1NiIsImtpZCI6Ims5RmxwSFR1YklmZWNsUU5QRVZzeFcxazFZZ0Zfbk1BWllOSGVuOFQxdGciLCJ0eXAiOiJKV1MifQ.eyJwcm92aWRlciI6InNhbmRib3giLCJzY29wZXMiOlsiLzIwMjMtMDMtMDEveGhyL2NvbXBhbnkiLCIvMjAyMy0wMy0wMS94aHIvZW1wbG95ZWUiLCIvMjAyMy0wMy0wMS94aHIvZW1wbG95ZWVzIiwiLzIwMjMtMDMtMDEveGhyL2dyb3VwcyIsIi8yMDIzLTAzLTAxL3hoci9pZGVudGl0eSIsIi8yMDIzLTAzLTAxL3hoci9wYXlydW5zIiwiLzIwMjMtMDMtMDEveGhyL3BheXJ1bnMvOnBheXJ1bl9pZCIsIi8yMDIzLTAzLTAxL3hoci90aW1lLW9mZi1iYWxhbmNlcyIsIi8yMDIzLTAzLTAxL3hoci90aW1lLW9mZi1lbnRyaWVzIiwiLzIwMjMtMDMtMDEveGhyL3RpbWVzaGVldHMiLCIvMjAyMy0wMy0wMS94aHIvd29yay1sb2NhdGlvbnMiXSwidG9rZW4iOiIzYjg4MDc2NC1kMGFmLTQ5ZDAtOGM5OS00YzIwYjE2MTJjOTMiLCJpYXQiOjE3MTE4MTA4NTgsImlzcyI6InB1YmxpY2FwaS1pbnRlcm1lZGlhdGUucHJvZC5lbmdpbmVlcmluZy5hZmZpeGFwaS5jb20iLCJzdWIiOiJ4aHIiLCJhdWQiOiIwOEJCMDgxRS1EOUFCNEQxNC04REY5OTIzMy02NjYxNUNFOSJ9.n3pJmmfegU21Tko_TyUyCHi4ITvfd75T8NFFTHmf1r8AI8yCUYTWdfNjyZZWcZD6z50I3Wsk2rAd8GDWXn4vlg' \\   'https://api.affixapi.com/2023-03-01/xhr/employees' ```  # Compression We support `brotli`, `gzip`, and `deflate` compression algorithms.  To enable, pass the `Accept-Encoding` header with one or all of the values: `br`, `gzip`, `deflate`, or `identity` (no compression)  In the response, you will receive the `Content-Encoding` response header indicating the compression algorithm used in the data payload to enable you to decompress the result. If the `Accept-Encoding: identity` header was passed, no `Content-Encoding` response header is sent back, as no compression algorithm was used.  # Webhooks An exciting feature for HR/Payroll modes are webhooks.  If enabled, your `webhook_uri` is set on your `client_id` for the respective environment: `dev | prod`  Webhooks are configured to make live requests to the underlying integration 1x/hr, and if a difference is detected since the last request, we will send a request to your `webhook_uri` with this shape:  ``` {    added: <api.v20230301.Employees>[     <api.v20230301.Employee>{       ...,       date_of_birth: '2010-08-06',       display_full_name: 'Daija Rogahn',       employee_number: '57993',       employment_status: 'pending',       employment_type: 'other',       employments: [         {           currency: 'eur',           effective_date: '2022-02-25',           employment_type: 'other',           job_title: 'Dynamic Implementation Manager',           pay_frequency: 'semimonthly',           pay_period: 'YEAR',           pay_rate: 96000,         },       ],       first_name: 'Daija',       ...     }   ],   removed: [],   updated: [     <api.v20230301.Employee>{       ...,       date_of_birth: '2009-11-09',       display_full_name: 'Lourdes Stiedemann',       employee_number: '63189',       employment_status: 'leave',       employment_type: 'full_time',       employments: [         {           currency: 'gbp',           effective_date: '2023-01-16',           employment_type: 'full_time',           job_title: 'Forward Brand Planner',           pay_frequency: 'semimonthly',           pay_period: 'YEAR',           pay_rate: 86000,         },       ],       first_name: 'Lourdes',     }   ] } ```  the following headers will be sent with webhook requests:  ``` x-affix-api-signature: ab8474e609db95d5df3adc39ea3add7a7544bd215c5c520a30a650ae93a2fba7  x-affix-api-origin:  webhooks-employees-webhook  user-agent:  affixapi.com ```  Before trusting the payload, you should sign the payload and verify the signature matches the signature sent by the `affixapi.com` service.  This secures that the data sent to your `webhook_uri` is from the `affixapi.com` server.  The signature is created by combining the signing secret (your `client_secret`) with the body of the request sent using a standard HMAC-SHA256 keyed hash.  The signature can be created via:   - create an `HMAC` with your `client_secret`   - update the `HMAC` with the payload   - get the hex digest -> this is the signature  Sample `typescript` code that follows this recipe:  ``` import { createHmac } from 'crypto';  export const computeSignature = ({   str,   signingSecret, }: {   signingSecret: string;   str: string; }): string => {   const hmac = createHmac('sha256', signingSecret);   hmac.update(str);   const signature = hmac.digest('hex');    return signature; }; ```  While verifying the Affix API signature header should be your primary method of confirming validity, you can also whitelist our outbound webhook static IP addresses.  ``` dev:   - 52.210.169.82   - 52.210.38.77   - 3.248.135.204  prod:   - 52.51.160.102   - 54.220.83.244   - 3.254.213.171 ```  ## Rate limits Open endpoints (not gated by an API key) (applied at endpoint level):   - 15 requests every 1 minute (by IP address)   - 25 requests every 5 minutes (by IP address)  Gated endpoints (require an API key) (applied at endpoint level):   - 40 requests every 1 minute (by IP address)   - 40 requests every 5 minutes (by `client_id`)  Things to keep in mind:   - Open endpoints (not gated by an API key) will likely be called by your     users, not you, so rate limits generally would not apply to you.   - As a developer, rate limits are applied at the endpoint granularity.     - For example, say the rate limits below are 10 requests per minute by ip.       from that same ip, within 1 minute, you get:       - 10 requests per minute on `/orders`,       - another 10 requests per minute on `/items`,       - and another 10 requests per minute on `/identity`,       - for a total of 30 requests per minute. 

The version of the OpenAPI document: 2023-03-01
Contact: developers@affixapi.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module OpenapiClient
  class CreateEmployeeRequest
    attr_accessor :employee_number

    # the first name of the individual
    attr_accessor :first_name

    # the last name of the individual
    attr_accessor :last_name

    attr_accessor :display_full_name

    attr_accessor :nationality

    attr_accessor :job_title

    # the work email of the individual
    attr_accessor :work_email

    # the personal email of the individual
    attr_accessor :personal_email

    # +1234567890
    attr_accessor :mobile_phone_number

    attr_accessor :tax_id

    attr_accessor :gender

    attr_accessor :ethnicity

    # `other` option can include co-habitating, civil partnership, separated, widowed, etc 
    attr_accessor :marital_status

    attr_accessor :date_of_birth

    attr_accessor :employment_status

    attr_accessor :employment_type

    attr_accessor :start_date

    attr_accessor :termination_date

    attr_accessor :avatar

    attr_accessor :home_location

    attr_accessor :work_location

    attr_accessor :manager

    attr_accessor :bank_account

    attr_accessor :employment_history

    attr_accessor :compensation_history

    attr_accessor :custom_fields

    attr_accessor :groups

    attr_accessor :dependents

    attr_accessor :emergency_contacts

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'employee_number' => :'employee_number',
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'display_full_name' => :'display_full_name',
        :'nationality' => :'nationality',
        :'job_title' => :'job_title',
        :'work_email' => :'work_email',
        :'personal_email' => :'personal_email',
        :'mobile_phone_number' => :'mobile_phone_number',
        :'tax_id' => :'tax_id',
        :'gender' => :'gender',
        :'ethnicity' => :'ethnicity',
        :'marital_status' => :'marital_status',
        :'date_of_birth' => :'date_of_birth',
        :'employment_status' => :'employment_status',
        :'employment_type' => :'employment_type',
        :'start_date' => :'start_date',
        :'termination_date' => :'termination_date',
        :'avatar' => :'avatar',
        :'home_location' => :'home_location',
        :'work_location' => :'work_location',
        :'manager' => :'manager',
        :'bank_account' => :'bank_account',
        :'employment_history' => :'employment_history',
        :'compensation_history' => :'compensation_history',
        :'custom_fields' => :'custom_fields',
        :'groups' => :'groups',
        :'dependents' => :'dependents',
        :'emergency_contacts' => :'emergency_contacts'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'employee_number' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'display_full_name' => :'String',
        :'nationality' => :'String',
        :'job_title' => :'String',
        :'work_email' => :'String',
        :'personal_email' => :'String',
        :'mobile_phone_number' => :'String',
        :'tax_id' => :'String',
        :'gender' => :'String',
        :'ethnicity' => :'String',
        :'marital_status' => :'String',
        :'date_of_birth' => :'Date',
        :'employment_status' => :'EmploymentStatusNotNullRequest',
        :'employment_type' => :'String',
        :'start_date' => :'Date',
        :'termination_date' => :'Date',
        :'avatar' => :'String',
        :'home_location' => :'AddressNoNonNullRequest',
        :'work_location' => :'LocationNoNonNullRequest',
        :'manager' => :'CreateEmployeeRequestManager',
        :'bank_account' => :'CreateEmployeeRequestBankAccount',
        :'employment_history' => :'Array<EmploymentHistoryNoNonNullRequest>',
        :'compensation_history' => :'Array<CompensationHistoryNoNonNullRequest>',
        :'custom_fields' => :'Object',
        :'groups' => :'Array<GroupNoNullEnumRequest>',
        :'dependents' => :'Array<CreateEmployeeRequestDependents>',
        :'emergency_contacts' => :'Array<CreateEmployeeRequestEmergencyContacts>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'employee_number',
        :'display_full_name',
        :'nationality',
        :'job_title',
        :'work_email',
        :'personal_email',
        :'mobile_phone_number',
        :'tax_id',
        :'gender',
        :'ethnicity',
        :'marital_status',
        :'date_of_birth',
        :'employment_status',
        :'employment_type',
        :'start_date',
        :'termination_date',
        :'avatar',
        :'home_location',
        :'work_location',
        :'manager',
        :'bank_account',
        :'employment_history',
        :'compensation_history',
        :'custom_fields',
        :'groups',
        :'dependents',
        :'emergency_contacts'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::CreateEmployeeRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::CreateEmployeeRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'employee_number')
        self.employee_number = attributes[:'employee_number']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'display_full_name')
        self.display_full_name = attributes[:'display_full_name']
      end

      if attributes.key?(:'nationality')
        self.nationality = attributes[:'nationality']
      end

      if attributes.key?(:'job_title')
        self.job_title = attributes[:'job_title']
      end

      if attributes.key?(:'work_email')
        self.work_email = attributes[:'work_email']
      end

      if attributes.key?(:'personal_email')
        self.personal_email = attributes[:'personal_email']
      end

      if attributes.key?(:'mobile_phone_number')
        self.mobile_phone_number = attributes[:'mobile_phone_number']
      end

      if attributes.key?(:'tax_id')
        self.tax_id = attributes[:'tax_id']
      end

      if attributes.key?(:'gender')
        self.gender = attributes[:'gender']
      end

      if attributes.key?(:'ethnicity')
        self.ethnicity = attributes[:'ethnicity']
      end

      if attributes.key?(:'marital_status')
        self.marital_status = attributes[:'marital_status']
      end

      if attributes.key?(:'date_of_birth')
        self.date_of_birth = attributes[:'date_of_birth']
      end

      if attributes.key?(:'employment_status')
        self.employment_status = attributes[:'employment_status']
      end

      if attributes.key?(:'employment_type')
        self.employment_type = attributes[:'employment_type']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'termination_date')
        self.termination_date = attributes[:'termination_date']
      end

      if attributes.key?(:'avatar')
        self.avatar = attributes[:'avatar']
      end

      if attributes.key?(:'home_location')
        self.home_location = attributes[:'home_location']
      end

      if attributes.key?(:'work_location')
        self.work_location = attributes[:'work_location']
      end

      if attributes.key?(:'manager')
        self.manager = attributes[:'manager']
      end

      if attributes.key?(:'bank_account')
        self.bank_account = attributes[:'bank_account']
      end

      if attributes.key?(:'employment_history')
        if (value = attributes[:'employment_history']).is_a?(Array)
          self.employment_history = value
        end
      end

      if attributes.key?(:'compensation_history')
        if (value = attributes[:'compensation_history']).is_a?(Array)
          self.compensation_history = value
        end
      end

      if attributes.key?(:'custom_fields')
        self.custom_fields = attributes[:'custom_fields']
      end

      if attributes.key?(:'groups')
        if (value = attributes[:'groups']).is_a?(Array)
          self.groups = value
        end
      end

      if attributes.key?(:'dependents')
        if (value = attributes[:'dependents']).is_a?(Array)
          self.dependents = value
        end
      end

      if attributes.key?(:'emergency_contacts')
        if (value = attributes[:'emergency_contacts']).is_a?(Array)
          self.emergency_contacts = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @first_name.nil?
        invalid_properties.push('invalid value for "first_name", first_name cannot be nil.')
      end

      if @last_name.nil?
        invalid_properties.push('invalid value for "last_name", last_name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @first_name.nil?
      return false if @last_name.nil?
      gender_validator = EnumAttributeValidator.new('String', ["male", "female", "not_specified"])
      return false unless gender_validator.valid?(@gender)
      ethnicity_validator = EnumAttributeValidator.new('String', ["asian", "black", "hispanic", "mixed", "not_specified", "other", "white"])
      return false unless ethnicity_validator.valid?(@ethnicity)
      marital_status_validator = EnumAttributeValidator.new('String', ["single", "married", "divorced", "not_specified", "other"])
      return false unless marital_status_validator.valid?(@marital_status)
      employment_type_validator = EnumAttributeValidator.new('String', ["full_time", "part_time", "contractor", "other"])
      return false unless employment_type_validator.valid?(@employment_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] gender Object to be assigned
    def gender=(gender)
      validator = EnumAttributeValidator.new('String', ["male", "female", "not_specified"])
      unless validator.valid?(gender)
        fail ArgumentError, "invalid value for \"gender\", must be one of #{validator.allowable_values}."
      end
      @gender = gender
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ethnicity Object to be assigned
    def ethnicity=(ethnicity)
      validator = EnumAttributeValidator.new('String', ["asian", "black", "hispanic", "mixed", "not_specified", "other", "white"])
      unless validator.valid?(ethnicity)
        fail ArgumentError, "invalid value for \"ethnicity\", must be one of #{validator.allowable_values}."
      end
      @ethnicity = ethnicity
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] marital_status Object to be assigned
    def marital_status=(marital_status)
      validator = EnumAttributeValidator.new('String', ["single", "married", "divorced", "not_specified", "other"])
      unless validator.valid?(marital_status)
        fail ArgumentError, "invalid value for \"marital_status\", must be one of #{validator.allowable_values}."
      end
      @marital_status = marital_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] employment_type Object to be assigned
    def employment_type=(employment_type)
      validator = EnumAttributeValidator.new('String', ["full_time", "part_time", "contractor", "other"])
      unless validator.valid?(employment_type)
        fail ArgumentError, "invalid value for \"employment_type\", must be one of #{validator.allowable_values}."
      end
      @employment_type = employment_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          employee_number == o.employee_number &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          display_full_name == o.display_full_name &&
          nationality == o.nationality &&
          job_title == o.job_title &&
          work_email == o.work_email &&
          personal_email == o.personal_email &&
          mobile_phone_number == o.mobile_phone_number &&
          tax_id == o.tax_id &&
          gender == o.gender &&
          ethnicity == o.ethnicity &&
          marital_status == o.marital_status &&
          date_of_birth == o.date_of_birth &&
          employment_status == o.employment_status &&
          employment_type == o.employment_type &&
          start_date == o.start_date &&
          termination_date == o.termination_date &&
          avatar == o.avatar &&
          home_location == o.home_location &&
          work_location == o.work_location &&
          manager == o.manager &&
          bank_account == o.bank_account &&
          employment_history == o.employment_history &&
          compensation_history == o.compensation_history &&
          custom_fields == o.custom_fields &&
          groups == o.groups &&
          dependents == o.dependents &&
          emergency_contacts == o.emergency_contacts
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [employee_number, first_name, last_name, display_full_name, nationality, job_title, work_email, personal_email, mobile_phone_number, tax_id, gender, ethnicity, marital_status, date_of_birth, employment_status, employment_type, start_date, termination_date, avatar, home_location, work_location, manager, bank_account, employment_history, compensation_history, custom_fields, groups, dependents, emergency_contacts].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
