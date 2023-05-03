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

# Unit tests for DeliverrAPI::ParcelsOmar
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ParcelsOmar' do
  before do
    # run before each test
    @api_instance = DeliverrAPI::ParcelsOmar.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ParcelsOmar' do
    it 'should create an instance of ParcelsOmar' do
      expect(@api_instance).to be_instance_of(DeliverrAPI::ParcelsOmar)
    end
  end

  # unit tests for create_parcel
  # Create a parcel and purchase a label for that parcel.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [ParcelCreateResponse]
  describe 'create_parcel test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_parcel
  # Fetch the parcel with the specified ID.
  # @param parcel_id Unique ID used to track the parcel, returned after acquiring a purchase label.
  # @param [Hash] opts the optional parameters
  # @return [ParcelGetResponse]
  describe 'get_parcel test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_parcel_tracking
  # Fetch the tracking information for the parcel with the specified ID.
  # @param parcel_id Unique ID used to track the parcel, returned after acquiring a purchase label.
  # @param [Hash] opts the optional parameters
  # @return [ParcelTrackingGetResponse]
  describe 'get_parcel_tracking test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_quote
  # Create a quote for a label purchase without actually purchasing a label.
  # @param quote_create_request 
  # @param [Hash] opts the optional parameters
  # @return [QuoteCreateResponse]
  describe 'get_quote test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_tracking_url
  # Fetch the tracking URL for the specified ID.
  # @param parcel_id Unique ID used to track the parcel, returned after acquiring a purchase label.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'get_tracking_url test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
