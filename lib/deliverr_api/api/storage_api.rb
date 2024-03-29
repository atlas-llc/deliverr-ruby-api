=begin
#Deliverr API

# **Note:** As of February 24 2023, Deliverr is not accepting new API accounts. Existing integrations already using the Deliverr API in production may continue usage and development.  All other Deliverr accounts initiating Deliverr API requests will be denied access. A new Logistics API is being developed by Shopify and will be replacing the Deliverr API.  # Getting Started  To start using the Deliverr API, you must have an active login account to the Deliverr web portal. To inbound physical inventory, ship orders, process returns or parcel transactions, you'll also need to set up a billing account.  ## If you do not already have a Deliverr account 1. Create an account for free at https://sellerportal.deliverr.com 2. When you are asked to choose an integration, you can click <b>Skip</b> at the upper right corner 3. Once you have logged in, you can start the OAuth process below  ## If you already have a Deliverr account 1. You can access the Products, Webhooks and Reports API immediately regardless of billing status 2. All other APIs available will require you to have set up billing with Deliverr 3. The Returns, Parcel, and Parcel Integration APIs are only accessible to select merchants  ## Guides and examples  Please visit the <a href='https://support.deliverr.com/hc/en-us/sections/6332705638423-Deliverr-API'>Deliverr API Guide</a> to view steps and code examples.  # Release Notes  Please refer to the following <a href='https://support.deliverr.com/hc/en-us/articles/9399822031383'>Deliverr API - Release Notes</a> help center article to view the most recent changes to Deliverr API.  # Status Page  You can find information about the current status of the API endpoints at <a href='https://deliverrstatus.com/'>deliverrstatus.com</a>  

The version of the OpenAPI document: 1.0.0
Contact: support@deliverr.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.5.0

=end

require 'cgi'

module Deliverr
  class StorageAPI
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get storage inbound by storageInboundId. This will include StorageInboundOrder, StorageInboundItems with status .
    # @param shipping_plan_id [String] Unique ID used to get the storageInboundCreated.
    # @param [Hash] opts the optional parameters
    # @return [StorageApiInboundResponse]
    def get_inbound_order(shipping_plan_id, opts = {})
      data, _status_code, _headers = get_inbound_order_with_http_info(shipping_plan_id, opts)
      data
    end

    # Get storage inbound by storageInboundId. This will include StorageInboundOrder, StorageInboundItems with status .
    # @param shipping_plan_id [String] Unique ID used to get the storageInboundCreated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(StorageApiInboundResponse, Integer, Hash)>] StorageApiInboundResponse data, response status code and response headers
    def get_inbound_order_with_http_info(shipping_plan_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageAPI.get_inbound_order ...'
      end
      # verify the required parameter 'shipping_plan_id' is set
      if @api_client.config.client_side_validation && shipping_plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'shipping_plan_id' when calling StorageAPI.get_inbound_order"
      end
      # resource path
      local_var_path = '/storage/v1/inbounds/{shippingPlanId}'.sub('{' + 'shippingPlanId' + '}', CGI.escape(shipping_plan_id.to_s))

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
      return_type = opts[:debug_return_type] || 'StorageApiInboundResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2.0']

      new_options = opts.merge(
        :operation => :"StorageAPI.get_inbound_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StorageAPI#get_inbound_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
