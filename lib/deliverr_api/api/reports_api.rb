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
  class ReportsAPI
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a report that can be downloaded as a CSV from the \"Get report status and url\" endpoint <tbody>               <br>               <tr style=\"height: 22px;\">               <td style=\"width: 69.8571%; height: 21px;\">               <p class=\"wysiwyg-indent1\"><strong>Relevant reports</strong></p>               <p class=\"wysiwyg-indent1\">Here are a few important reports for tracking <b>Inventory</b>,                                          <b>Orders</b> and <b>Shipments</b>:</p>               </td>               </tr>               <tr style=\"height: 22px;\">               <td style=\"width: 69.8571%; height: 22px;\">               <p class=\"wysiwyg-indent1\"><a href=\"https://support.deliverr.com/hc/en-us/articles/1500008315782-Inbounds-Shipments-Report\" target=\"_self\"><strong>Inbounds - Shipments: </strong></a>This report provides the status of the shipments that make up your shipping plans. You will also find receiving information. (Requires startDate and endDate)<em>&nbsp;</em></p>               </td>               <tr style=\"height: 22px;\">               <td class=\"wysiwyg-indent1\" style=\"width: 30.1429%; height: 22px;\">               </td>               <td style=\"width: 69.8571%; height: 22px;\">               <p class=\"wysiwyg-indent1\"><a href=\"https://support.deliverr.com/hc/en-us/articles/1500008318542-Inventory-Levels-Today-Report\" target=\"_self\"><strong>Inventory - Levels Today: </strong></a>This report provides a snapshot of the most recent inventory levels by SKU at each Deliverr fulfillment center. In addition, you will find data for orders placed over the last 30 days and days of fast tag remaining. The snapshot is taken around midnight UTC every day.</p>               </td>               </tr>               <tr style=\"height: 22px;\">               <td style=\"width: 69.8571%; height: 16px;\">               <p class=\"wysiwyg-indent1\"><a href=\"https://support.deliverr.com/hc/en-us/articles/1500011593962-Orders-Orders-Report\" target=\"_self\"><strong>Orders - All Orders: </strong></a>This report captures critical order information, such as marketplace, order creation time, order IDs, fulfillment cost, and important order status information (processing, shipped, delivered, cancelled, and error). You will also find order error codes:</p>               <ul>               <li>BAD_ADDRESS - the order's address cannot be validated, and you must correct it</li>               <li>STOCKOUT - the order cannot be fulfilled because one or more SKUs is stocked out</li>               <li>DSKU_NEVER_INBOUNDED - this order cannot be fulfilled because one or more SKUs was never inbounded to Deliverr</li>               </ul>               (Requires startDate and endDate) <br><br>               </td>               </tr>               <tr style=\"height: 16px;\">               <td style=\"width: 69.8571%; height: 16px;\">               <p class=\"wysiwyg-indent1\"><a href=\"https://support.deliverr.com/hc/en-us/articles/1500011618401-Orders-Shipments-Report\" target=\"_self\"><strong>Orders - Shipments: </strong></a>This report provides information about the shipments in your orders. (Requires startDate and endDate)</p>               </td>               </tr>               </tbody>
    # @param report_generation_request [ReportGenerationRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ReportGenerationResponse]
    def generate_report(report_generation_request, opts = {})
      data, _status_code, _headers = generate_report_with_http_info(report_generation_request, opts)
      data
    end

    # Create a report that can be downloaded as a CSV from the \&quot;Get report status and url\&quot; endpoint &lt;tbody&gt;               &lt;br&gt;               &lt;tr style&#x3D;\&quot;height: 22px;\&quot;&gt;               &lt;td style&#x3D;\&quot;width: 69.8571%; height: 21px;\&quot;&gt;               &lt;p class&#x3D;\&quot;wysiwyg-indent1\&quot;&gt;&lt;strong&gt;Relevant reports&lt;/strong&gt;&lt;/p&gt;               &lt;p class&#x3D;\&quot;wysiwyg-indent1\&quot;&gt;Here are a few important reports for tracking &lt;b&gt;Inventory&lt;/b&gt;,                                          &lt;b&gt;Orders&lt;/b&gt; and &lt;b&gt;Shipments&lt;/b&gt;:&lt;/p&gt;               &lt;/td&gt;               &lt;/tr&gt;               &lt;tr style&#x3D;\&quot;height: 22px;\&quot;&gt;               &lt;td style&#x3D;\&quot;width: 69.8571%; height: 22px;\&quot;&gt;               &lt;p class&#x3D;\&quot;wysiwyg-indent1\&quot;&gt;&lt;a href&#x3D;\&quot;https://support.deliverr.com/hc/en-us/articles/1500008315782-Inbounds-Shipments-Report\&quot; target&#x3D;\&quot;_self\&quot;&gt;&lt;strong&gt;Inbounds - Shipments: &lt;/strong&gt;&lt;/a&gt;This report provides the status of the shipments that make up your shipping plans. You will also find receiving information. (Requires startDate and endDate)&lt;em&gt;&amp;nbsp;&lt;/em&gt;&lt;/p&gt;               &lt;/td&gt;               &lt;tr style&#x3D;\&quot;height: 22px;\&quot;&gt;               &lt;td class&#x3D;\&quot;wysiwyg-indent1\&quot; style&#x3D;\&quot;width: 30.1429%; height: 22px;\&quot;&gt;               &lt;/td&gt;               &lt;td style&#x3D;\&quot;width: 69.8571%; height: 22px;\&quot;&gt;               &lt;p class&#x3D;\&quot;wysiwyg-indent1\&quot;&gt;&lt;a href&#x3D;\&quot;https://support.deliverr.com/hc/en-us/articles/1500008318542-Inventory-Levels-Today-Report\&quot; target&#x3D;\&quot;_self\&quot;&gt;&lt;strong&gt;Inventory - Levels Today: &lt;/strong&gt;&lt;/a&gt;This report provides a snapshot of the most recent inventory levels by SKU at each Deliverr fulfillment center. In addition, you will find data for orders placed over the last 30 days and days of fast tag remaining. The snapshot is taken around midnight UTC every day.&lt;/p&gt;               &lt;/td&gt;               &lt;/tr&gt;               &lt;tr style&#x3D;\&quot;height: 22px;\&quot;&gt;               &lt;td style&#x3D;\&quot;width: 69.8571%; height: 16px;\&quot;&gt;               &lt;p class&#x3D;\&quot;wysiwyg-indent1\&quot;&gt;&lt;a href&#x3D;\&quot;https://support.deliverr.com/hc/en-us/articles/1500011593962-Orders-Orders-Report\&quot; target&#x3D;\&quot;_self\&quot;&gt;&lt;strong&gt;Orders - All Orders: &lt;/strong&gt;&lt;/a&gt;This report captures critical order information, such as marketplace, order creation time, order IDs, fulfillment cost, and important order status information (processing, shipped, delivered, cancelled, and error). You will also find order error codes:&lt;/p&gt;               &lt;ul&gt;               &lt;li&gt;BAD_ADDRESS - the order&#39;s address cannot be validated, and you must correct it&lt;/li&gt;               &lt;li&gt;STOCKOUT - the order cannot be fulfilled because one or more SKUs is stocked out&lt;/li&gt;               &lt;li&gt;DSKU_NEVER_INBOUNDED - this order cannot be fulfilled because one or more SKUs was never inbounded to Deliverr&lt;/li&gt;               &lt;/ul&gt;               (Requires startDate and endDate) &lt;br&gt;&lt;br&gt;               &lt;/td&gt;               &lt;/tr&gt;               &lt;tr style&#x3D;\&quot;height: 16px;\&quot;&gt;               &lt;td style&#x3D;\&quot;width: 69.8571%; height: 16px;\&quot;&gt;               &lt;p class&#x3D;\&quot;wysiwyg-indent1\&quot;&gt;&lt;a href&#x3D;\&quot;https://support.deliverr.com/hc/en-us/articles/1500011618401-Orders-Shipments-Report\&quot; target&#x3D;\&quot;_self\&quot;&gt;&lt;strong&gt;Orders - Shipments: &lt;/strong&gt;&lt;/a&gt;This report provides information about the shipments in your orders. (Requires startDate and endDate)&lt;/p&gt;               &lt;/td&gt;               &lt;/tr&gt;               &lt;/tbody&gt;
    # @param report_generation_request [ReportGenerationRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReportGenerationResponse, Integer, Hash)>] ReportGenerationResponse data, response status code and response headers
    def generate_report_with_http_info(report_generation_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportsAPI.generate_report ...'
      end
      # verify the required parameter 'report_generation_request' is set
      if @api_client.config.client_side_validation && report_generation_request.nil?
        fail ArgumentError, "Missing the required parameter 'report_generation_request' when calling ReportsAPI.generate_report"
      end
      # resource path
      local_var_path = '/reports/v1/report'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(report_generation_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ReportGenerationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2.0']

      new_options = opts.merge(
        :operation => :"ReportsAPI.generate_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsAPI#generate_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Poll this endpoint using the reportReference returned by the \"Create report\" endpoint. Use this endpoint to download the reports generated by the creation request.
    # @param report_reference [String] 
    # @param [Hash] opts the optional parameters
    # @return [Report]
    def get_report_status(report_reference, opts = {})
      data, _status_code, _headers = get_report_status_with_http_info(report_reference, opts)
      data
    end

    # Poll this endpoint using the reportReference returned by the \&quot;Create report\&quot; endpoint. Use this endpoint to download the reports generated by the creation request.
    # @param report_reference [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Report, Integer, Hash)>] Report data, response status code and response headers
    def get_report_status_with_http_info(report_reference, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportsAPI.get_report_status ...'
      end
      # verify the required parameter 'report_reference' is set
      if @api_client.config.client_side_validation && report_reference.nil?
        fail ArgumentError, "Missing the required parameter 'report_reference' when calling ReportsAPI.get_report_status"
      end
      # resource path
      local_var_path = '/reports/v1/status/{reportReference}'.sub('{' + 'reportReference' + '}', CGI.escape(report_reference.to_s))

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
      return_type = opts[:debug_return_type] || 'Report'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2.0']

      new_options = opts.merge(
        :operation => :"ReportsAPI.get_report_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsAPI#get_report_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end