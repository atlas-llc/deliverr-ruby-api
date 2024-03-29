=begin
#Deliverr API

# **Note:** As of February 24 2023, Deliverr is not accepting new API accounts. Existing integrations already using the Deliverr API in production may continue usage and development.  All other Deliverr accounts initiating Deliverr API requests will be denied access. A new Logistics API is being developed by Shopify and will be replacing the Deliverr API.  # Getting Started  To start using the Deliverr API, you must have an active login account to the Deliverr web portal. To inbound physical inventory, ship orders, process returns or parcel transactions, you'll also need to set up a billing account.  ## If you do not already have a Deliverr account 1. Create an account for free at https://sellerportal.deliverr.com 2. When you are asked to choose an integration, you can click <b>Skip</b> at the upper right corner 3. Once you have logged in, you can start the OAuth process below  ## If you already have a Deliverr account 1. You can access the Products, Webhooks and Reports API immediately regardless of billing status 2. All other APIs available will require you to have set up billing with Deliverr 3. The Returns, Parcel, and Parcel Integration APIs are only accessible to select merchants  ## Guides and examples  Please visit the <a href='https://support.deliverr.com/hc/en-us/sections/6332705638423-Deliverr-API'>Deliverr API Guide</a> to view steps and code examples.  # Release Notes  Please refer to the following <a href='https://support.deliverr.com/hc/en-us/articles/9399822031383'>Deliverr API - Release Notes</a> help center article to view the most recent changes to Deliverr API.  # Status Page  You can find information about the current status of the API endpoints at <a href='https://deliverrstatus.com/'>deliverrstatus.com</a>  

The version of the OpenAPI document: 1.0.0
Contact: support@deliverr.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.5.0

=end

require 'spec_helper'

describe Deliverr::Configuration do
  let(:config) { Deliverr::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    # require 'URI'
    # uri = URI.parse("https://api.deliverr.com")
    # Deliverr.configure do |c|
    #   c.host = uri.host
    #   c.base_path = uri.path
    # end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      # expect(config.base_url).to eq("https://api.deliverr.com")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        # expect(config.base_url).to eq("https://api.deliverr.com")
      end
    end
  end

  describe '#configure_faraday_connection' do
    let(:faraday_connection) { Faraday::Connection.new }

    before do
      stub_const('CustomAdapter', Class.new(Faraday::Adapter))
      stub_const('AnotherCustomAdapter', Class.new(Faraday::Adapter))

      config.configure_faraday_connection do |conn|
        conn.adapter CustomAdapter
        conn.response :logger, nil, headers: true, bodies: true, log_level: :debug do |logger|
          logger.filter(/(Authorization: )(.*)/, '\1[REDACTED]')
        end
      end
    end

    it 'adds a block that will be used to configure the connection' do
      expect(faraday_connection.adapter).to eq(Faraday::Adapter::NetHttp)
      expect(faraday_connection.builder.handlers).to_not include(Faraday::Response::Logger)

      config.configure_connection(faraday_connection)

      expect(faraday_connection.adapter).to eq(CustomAdapter)
      expect(faraday_connection.builder.handlers).to include(Faraday::Response::Logger)
    end

    it 'supports multiple configuration blocks' do
      config.configure_faraday_connection do |conn|
        conn.adapter AnotherCustomAdapter
      end

      expect(faraday_connection.adapter).to eq(Faraday::Adapter::NetHttp)
      expect(faraday_connection.builder.handlers).to_not include(Faraday::Response::Logger)

      config.configure_connection(faraday_connection)

      expect(faraday_connection.adapter).to eq(AnotherCustomAdapter)
      expect(faraday_connection.builder.handlers).to include(Faraday::Response::Logger)
    end
  end
end
