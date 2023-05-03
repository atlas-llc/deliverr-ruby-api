=begin
#Deliverr API

# **Note:** As of February 24 2023, Deliverr is not accepting new API accounts. Existing integrations already using the Deliverr API in production may continue usage and development.  All other Deliverr accounts initiating Deliverr API requests will be denied access. A new Logistics API is being developed by Shopify and will be replacing the Deliverr API.  # Getting Started  To start using the Deliverr API, you must have an active login account to the Deliverr web portal. To inbound physical inventory, ship orders, process returns or parcel transactions, you'll also need to set up a billing account.  ## If you do not already have a Deliverr account 1. Create an account for free at https://sellerportal.deliverr.com 2. When you are asked to choose an integration, you can click <b>Skip</b> at the upper right corner 3. Once you have logged in, you can start the OAuth process below  ## If you already have a Deliverr account 1. You can access the Products, Webhooks and Reports API immediately regardless of billing status 2. All other APIs available will require you to have set up billing with Deliverr 3. The Returns, Parcel, and Parcel Integration APIs are only accessible to select merchants  ## Guides and examples  Please visit the <a href='https://support.deliverr.com/hc/en-us/sections/6332705638423-Deliverr-API'>Deliverr API Guide</a> to view steps and code examples.  # Release Notes  Please refer to the following <a href='https://support.deliverr.com/hc/en-us/articles/9399822031383'>Deliverr API - Release Notes</a> help center article to view the most recent changes to Deliverr API.  # Status Page  You can find information about the current status of the API endpoints at <a href='https://deliverrstatus.com/'>deliverrstatus.com</a>  

The version of the OpenAPI document: 1.0.0
Contact: support@deliverr.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.5.0

=end

require 'spec_helper'
require 'json'

# Unit tests for DeliverrAPI::ReportsOmar
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ReportsOmar' do
  before do
    # run before each test
    @api_instance = DeliverrAPI::ReportsOmar.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReportsOmar' do
    it 'should create an instance of ReportsOmar' do
      expect(@api_instance).to be_instance_of(DeliverrAPI::ReportsOmar)
    end
  end

  # unit tests for generate_report
  # Create a report that can be downloaded as a CSV from the \&quot;Get report status and url\&quot; endpoint &lt;tbody&gt;               &lt;br&gt;               &lt;tr style&#x3D;\&quot;height: 22px;\&quot;&gt;               &lt;td style&#x3D;\&quot;width: 69.8571%; height: 21px;\&quot;&gt;               &lt;p class&#x3D;\&quot;wysiwyg-indent1\&quot;&gt;&lt;strong&gt;Relevant reports&lt;/strong&gt;&lt;/p&gt;               &lt;p class&#x3D;\&quot;wysiwyg-indent1\&quot;&gt;Here are a few important reports for tracking &lt;b&gt;Inventory&lt;/b&gt;,                                          &lt;b&gt;Orders&lt;/b&gt; and &lt;b&gt;Shipments&lt;/b&gt;:&lt;/p&gt;               &lt;/td&gt;               &lt;/tr&gt;               &lt;tr style&#x3D;\&quot;height: 22px;\&quot;&gt;               &lt;td style&#x3D;\&quot;width: 69.8571%; height: 22px;\&quot;&gt;               &lt;p class&#x3D;\&quot;wysiwyg-indent1\&quot;&gt;&lt;a href&#x3D;\&quot;https://support.deliverr.com/hc/en-us/articles/1500008315782-Inbounds-Shipments-Report\&quot; target&#x3D;\&quot;_self\&quot;&gt;&lt;strong&gt;Inbounds - Shipments: &lt;/strong&gt;&lt;/a&gt;This report provides the status of the shipments that make up your shipping plans. You will also find receiving information. (Requires startDate and endDate)&lt;em&gt;&amp;nbsp;&lt;/em&gt;&lt;/p&gt;               &lt;/td&gt;               &lt;tr style&#x3D;\&quot;height: 22px;\&quot;&gt;               &lt;td class&#x3D;\&quot;wysiwyg-indent1\&quot; style&#x3D;\&quot;width: 30.1429%; height: 22px;\&quot;&gt;               &lt;/td&gt;               &lt;td style&#x3D;\&quot;width: 69.8571%; height: 22px;\&quot;&gt;               &lt;p class&#x3D;\&quot;wysiwyg-indent1\&quot;&gt;&lt;a href&#x3D;\&quot;https://support.deliverr.com/hc/en-us/articles/1500008318542-Inventory-Levels-Today-Report\&quot; target&#x3D;\&quot;_self\&quot;&gt;&lt;strong&gt;Inventory - Levels Today: &lt;/strong&gt;&lt;/a&gt;This report provides a snapshot of the most recent inventory levels by SKU at each Deliverr fulfillment center. In addition, you will find data for orders placed over the last 30 days and days of fast tag remaining. The snapshot is taken around midnight UTC every day.&lt;/p&gt;               &lt;/td&gt;               &lt;/tr&gt;               &lt;tr style&#x3D;\&quot;height: 22px;\&quot;&gt;               &lt;td style&#x3D;\&quot;width: 69.8571%; height: 16px;\&quot;&gt;               &lt;p class&#x3D;\&quot;wysiwyg-indent1\&quot;&gt;&lt;a href&#x3D;\&quot;https://support.deliverr.com/hc/en-us/articles/1500011593962-Orders-Orders-Report\&quot; target&#x3D;\&quot;_self\&quot;&gt;&lt;strong&gt;Orders - All Orders: &lt;/strong&gt;&lt;/a&gt;This report captures critical order information, such as marketplace, order creation time, order IDs, fulfillment cost, and important order status information (processing, shipped, delivered, cancelled, and error). You will also find order error codes:&lt;/p&gt;               &lt;ul&gt;               &lt;li&gt;BAD_ADDRESS - the order&#39;s address cannot be validated, and you must correct it&lt;/li&gt;               &lt;li&gt;STOCKOUT - the order cannot be fulfilled because one or more SKUs is stocked out&lt;/li&gt;               &lt;li&gt;DSKU_NEVER_INBOUNDED - this order cannot be fulfilled because one or more SKUs was never inbounded to Deliverr&lt;/li&gt;               &lt;/ul&gt;               (Requires startDate and endDate) &lt;br&gt;&lt;br&gt;               &lt;/td&gt;               &lt;/tr&gt;               &lt;tr style&#x3D;\&quot;height: 16px;\&quot;&gt;               &lt;td style&#x3D;\&quot;width: 69.8571%; height: 16px;\&quot;&gt;               &lt;p class&#x3D;\&quot;wysiwyg-indent1\&quot;&gt;&lt;a href&#x3D;\&quot;https://support.deliverr.com/hc/en-us/articles/1500011618401-Orders-Shipments-Report\&quot; target&#x3D;\&quot;_self\&quot;&gt;&lt;strong&gt;Orders - Shipments: &lt;/strong&gt;&lt;/a&gt;This report provides information about the shipments in your orders. (Requires startDate and endDate)&lt;/p&gt;               &lt;/td&gt;               &lt;/tr&gt;               &lt;/tbody&gt;
  # @param report_generation_request 
  # @param [Hash] opts the optional parameters
  # @return [ReportGenerationResponse]
  describe 'generate_report test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_report_status
  # Poll this endpoint using the reportReference returned by the \&quot;Create report\&quot; endpoint. Use this endpoint to download the reports generated by the creation request.
  # @param report_reference 
  # @param [Hash] opts the optional parameters
  # @return [Report]
  describe 'get_report_status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
