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
  class WebhooksAPI
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a webhook to subscribe to a type of Deliverr event.
    # @param webhook_create_model [WebhookCreateModel] 
    # @param [Hash] opts the optional parameters
    # @return [WebhookModel]
    def create_webhook(webhook_create_model, opts = {})
      data, _status_code, _headers = create_webhook_with_http_info(webhook_create_model, opts)
      data
    end

    # Create a webhook to subscribe to a type of Deliverr event.
    # @param webhook_create_model [WebhookCreateModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookModel, Integer, Hash)>] WebhookModel data, response status code and response headers
    def create_webhook_with_http_info(webhook_create_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksAPI.create_webhook ...'
      end
      # verify the required parameter 'webhook_create_model' is set
      if @api_client.config.client_side_validation && webhook_create_model.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_create_model' when calling WebhooksAPI.create_webhook"
      end
      # resource path
      local_var_path = '/webhooks/v1/webhook'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(webhook_create_model)

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2.0']

      new_options = opts.merge(
        :operation => :"WebhooksAPI.create_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksAPI#create_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a webhook that has been created.
    # @param webhook_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_webhook(webhook_id, opts = {})
      delete_webhook_with_http_info(webhook_id, opts)
      nil
    end

    # Delete a webhook that has been created.
    # @param webhook_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_webhook_with_http_info(webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksAPI.delete_webhook ...'
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhooksAPI.delete_webhook"
      end
      pattern = Regexp.new(/^\d+$/)
      if @api_client.config.client_side_validation && webhook_id !~ pattern
        fail ArgumentError, "invalid value for 'webhook_id' when calling WebhooksAPI.delete_webhook, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/webhooks/v1/webhook/{webhookId}'.sub('{' + 'webhookId' + '}', CGI.escape(webhook_id.to_s))

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2.0']

      new_options = opts.merge(
        :operation => :"WebhooksAPI.delete_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksAPI#delete_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a specific webhook using the webhook identifier.
    # @param webhook_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [WebhookModel]
    def get_webhook(webhook_id, opts = {})
      data, _status_code, _headers = get_webhook_with_http_info(webhook_id, opts)
      data
    end

    # Get a specific webhook using the webhook identifier.
    # @param webhook_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookModel, Integer, Hash)>] WebhookModel data, response status code and response headers
    def get_webhook_with_http_info(webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksAPI.get_webhook ...'
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhooksAPI.get_webhook"
      end
      pattern = Regexp.new(/^\d+$/)
      if @api_client.config.client_side_validation && webhook_id !~ pattern
        fail ArgumentError, "invalid value for 'webhook_id' when calling WebhooksAPI.get_webhook, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/webhooks/v1/webhook/{webhookId}'.sub('{' + 'webhookId' + '}', CGI.escape(webhook_id.to_s))

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
      return_type = opts[:debug_return_type] || 'WebhookModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2.0']

      new_options = opts.merge(
        :operation => :"WebhooksAPI.get_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksAPI#get_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all webhooks currently registered and active.
    # @param [Hash] opts the optional parameters
    # @return [Array<WebhookModel>]
    def get_webhooks(opts = {})
      data, _status_code, _headers = get_webhooks_with_http_info(opts)
      data
    end

    # Get all webhooks currently registered and active.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<WebhookModel>, Integer, Hash)>] Array<WebhookModel> data, response status code and response headers
    def get_webhooks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksAPI.get_webhooks ...'
      end
      # resource path
      local_var_path = '/webhooks/v1/webhook'

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
      return_type = opts[:debug_return_type] || 'Array<WebhookModel>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2.0']

      new_options = opts.merge(
        :operation => :"WebhooksAPI.get_webhooks",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksAPI#get_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Trigger a mock webhook event to test that your webhooks are working successfully.
    # @param mock_webhook_details [MockWebhookDetails] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def trigger_mock_webhook_event(mock_webhook_details, opts = {})
      trigger_mock_webhook_event_with_http_info(mock_webhook_details, opts)
      nil
    end

    # Trigger a mock webhook event to test that your webhooks are working successfully.
    # @param mock_webhook_details [MockWebhookDetails] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def trigger_mock_webhook_event_with_http_info(mock_webhook_details, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksAPI.trigger_mock_webhook_event ...'
      end
      # verify the required parameter 'mock_webhook_details' is set
      if @api_client.config.client_side_validation && mock_webhook_details.nil?
        fail ArgumentError, "Missing the required parameter 'mock_webhook_details' when calling WebhooksAPI.trigger_mock_webhook_event"
      end
      # resource path
      local_var_path = '/webhooks/v1/event'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(mock_webhook_details)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2.0']

      new_options = opts.merge(
        :operation => :"WebhooksAPI.trigger_mock_webhook_event",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksAPI#trigger_mock_webhook_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
