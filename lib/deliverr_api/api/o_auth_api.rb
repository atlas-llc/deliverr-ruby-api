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
  class OAuthAPI
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Authorization URL to initiate flow
    # @param redirect_uri [String] The URI to which the oauth flow should redirect after successful authentication.
    # @param scopes [String] list of scopes seperated by &#39;+&#39;. Possible values are: api/products, api/inbounds, api/orders, api/returns, api/parcels, api/reports, api/webhooks.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def authorization_redirect(redirect_uri, scopes, opts = {})
      authorization_redirect_with_http_info(redirect_uri, scopes, opts)
      nil
    end

    # Authorization URL to initiate flow
    # @param redirect_uri [String] The URI to which the oauth flow should redirect after successful authentication.
    # @param scopes [String] list of scopes seperated by &#39;+&#39;. Possible values are: api/products, api/inbounds, api/orders, api/returns, api/parcels, api/reports, api/webhooks.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def authorization_redirect_with_http_info(redirect_uri, scopes, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OAuthAPI.authorization_redirect ...'
      end
      # verify the required parameter 'redirect_uri' is set
      if @api_client.config.client_side_validation && redirect_uri.nil?
        fail ArgumentError, "Missing the required parameter 'redirect_uri' when calling OAuthAPI.authorization_redirect"
      end
      # verify the required parameter 'scopes' is set
      if @api_client.config.client_side_validation && scopes.nil?
        fail ArgumentError, "Missing the required parameter 'scopes' when calling OAuthAPI.authorization_redirect"
      end
      # resource path
      local_var_path = '/oauth/v1/authorize'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'redirect_uri'] = redirect_uri
      query_params[:'scopes'] = scopes

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"OAuthAPI.authorization_redirect",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OAuthAPI#authorization_redirect\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Exchange code for a refresh_token and use refresh_token to generate access_tokens at this endpoint.
    # @param grant_type [GrantTypes] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :refresh_token Must be present if grant_type is refresh_token.
    # @option opts [String] :code Must be present if grant_type is authorization_code.
    # @return [TokenResponse]
    def exchange_token(grant_type, opts = {})
      data, _status_code, _headers = exchange_token_with_http_info(grant_type, opts)
      data
    end

    # Exchange code for a refresh_token and use refresh_token to generate access_tokens at this endpoint.
    # @param grant_type [GrantTypes] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :refresh_token Must be present if grant_type is refresh_token.
    # @option opts [String] :code Must be present if grant_type is authorization_code.
    # @return [Array<(TokenResponse, Integer, Hash)>] TokenResponse data, response status code and response headers
    def exchange_token_with_http_info(grant_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OAuthAPI.exchange_token ...'
      end
      # verify the required parameter 'grant_type' is set
      if @api_client.config.client_side_validation && grant_type.nil?
        fail ArgumentError, "Missing the required parameter 'grant_type' when calling OAuthAPI.exchange_token"
      end
      # resource path
      local_var_path = '/oauth/v1/token'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['grant_type'] = grant_type
      form_params['refresh_token'] = opts[:'refresh_token'] if !opts[:'refresh_token'].nil?
      form_params['code'] = opts[:'code'] if !opts[:'code'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TokenResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"OAuthAPI.exchange_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OAuthAPI#exchange_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
