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

# Unit tests for DeliverrAPI::WebhooksOmar
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WebhooksOmar' do
  before do
    # run before each test
    @api_instance = DeliverrAPI::WebhooksOmar.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WebhooksOmar' do
    it 'should create an instance of WebhooksOmar' do
      expect(@api_instance).to be_instance_of(DeliverrAPI::WebhooksOmar)
    end
  end

  # unit tests for create_webhook
  # Create a webhook to subscribe to a type of Deliverr event.
  # @param webhook_create_model 
  # @param [Hash] opts the optional parameters
  # @return [WebhookModel]
  describe 'create_webhook test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_webhook
  # Delete a webhook that has been created.
  # @param webhook_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_webhook test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_webhook
  # Get a specific webhook using the webhook identifier.
  # @param webhook_id 
  # @param [Hash] opts the optional parameters
  # @return [WebhookModel]
  describe 'get_webhook test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_webhooks
  # Get all webhooks currently registered and active.
  # @param [Hash] opts the optional parameters
  # @return [Array<WebhookModel>]
  describe 'get_webhooks test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for trigger_mock_webhook_event
  # Trigger a mock webhook event to test that your webhooks are working successfully.
  # @param mock_webhook_details 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'trigger_mock_webhook_event test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
