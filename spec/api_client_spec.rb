=begin
#Deliverr API

# **Note:** As of February 24 2023, Deliverr is not accepting new API accounts. Existing integrations already using the Deliverr API in production may continue usage and development.  All other Deliverr accounts initiating Deliverr API requests will be denied access. A new Logistics API is being developed by Shopify and will be replacing the Deliverr API.  # Getting Started  To start using the Deliverr API, you must have an active login account to the Deliverr web portal. To inbound physical inventory, ship orders, process returns or parcel transactions, you'll also need to set up a billing account.  ## If you do not already have a Deliverr account 1. Create an account for free at https://sellerportal.deliverr.com 2. When you are asked to choose an integration, you can click <b>Skip</b> at the upper right corner 3. Once you have logged in, you can start the OAuth process below  ## If you already have a Deliverr account 1. You can access the Products, Webhooks and Reports API immediately regardless of billing status 2. All other APIs available will require you to have set up billing with Deliverr 3. The Returns, Parcel, and Parcel Integration APIs are only accessible to select merchants  ## Guides and examples  Please visit the <a href='https://support.deliverr.com/hc/en-us/sections/6332705638423-Deliverr-API'>Deliverr API Guide</a> to view steps and code examples.  # Release Notes  Please refer to the following <a href='https://support.deliverr.com/hc/en-us/articles/9399822031383'>Deliverr API - Release Notes</a> help center article to view the most recent changes to Deliverr API.  # Status Page  You can find information about the current status of the API endpoints at <a href='https://deliverrstatus.com/'>deliverrstatus.com</a>  

The version of the OpenAPI document: 1.0.0
Contact: support@deliverr.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.5.0

=end

require 'spec_helper'

describe Deliverr::ApiClient do
  context 'initialization' do
    context 'URL stuff' do
      context 'host' do
        it 'removes http from host' do
          Deliverr.configure { |c| c.host = 'http://example.com' }
          expect(Deliverr::Configuration.default.host).to eq('example.com')
        end

        it 'removes https from host' do
          Deliverr.configure { |c| c.host = 'https://wookiee.com' }
          expect(Deliverr::ApiClient.default.config.host).to eq('wookiee.com')
        end

        it 'removes trailing path from host' do
          Deliverr.configure { |c| c.host = 'hobo.com/v4' }
          expect(Deliverr::Configuration.default.host).to eq('hobo.com')
        end
      end

      context 'base_path' do
        it "prepends a slash to base_path" do
          Deliverr.configure { |c| c.base_path = 'v4/dog' }
          expect(Deliverr::Configuration.default.base_path).to eq('/v4/dog')
        end

        it "doesn't prepend a slash if one is already there" do
          Deliverr.configure { |c| c.base_path = '/v4/dog' }
          expect(Deliverr::Configuration.default.base_path).to eq('/v4/dog')
        end

        it "ends up as a blank string if nil" do
          Deliverr.configure { |c| c.base_path = nil }
          expect(Deliverr::Configuration.default.base_path).to eq('')
        end
      end
    end
  end


  describe 'proxy in #build_connection' do
    let(:config) { Deliverr::Configuration.new }
    let(:api_client) { Deliverr::ApiClient.new(config) }
    let(:proxy_uri) { URI('http://example.org:8080') }

    it 'defaults to nil' do
      expect(Deliverr::Configuration.default.proxy).to be_nil
      expect(config.proxy).to be_nil

      connection = api_client.build_connection
      expect(connection.proxy_for_request('/test')).to be_nil
    end

    it 'can be customized with a string' do
      config.proxy = proxy_uri.to_s

      connection = api_client.build_connection
      configured_proxy = connection.proxy_for_request('/test')

      expect(configured_proxy).not_to be_nil
      expect(configured_proxy.uri.to_s).to eq proxy_uri.to_s
    end

    it 'can be customized with a hash' do
      config.proxy = { uri: proxy_uri }

      connection = api_client.build_connection
      configured_proxy = connection.proxy_for_request('/test')

      expect(configured_proxy).not_to be_nil
      expect(configured_proxy.uri).to eq proxy_uri
    end
  end

  describe '#deserialize' do
    it "handles Array<Integer>" do
      api_client = Deliverr::ApiClient.new
      headers = { 'Content-Type' => 'application/json' }
      response = double('response', headers: headers, body: '[12, 34]')
      data = api_client.deserialize(response, 'Array<Integer>')
      expect(data).to be_instance_of(Array)
      expect(data).to eq([12, 34])
    end

    it 'handles Array<Array<Integer>>' do
      api_client = Deliverr::ApiClient.new
      headers = { 'Content-Type' => 'application/json' }
      response = double('response', headers: headers, body: '[[12, 34], [56]]')
      data = api_client.deserialize(response, 'Array<Array<Integer>>')
      expect(data).to be_instance_of(Array)
      expect(data).to eq([[12, 34], [56]])
    end

    it 'handles Hash<String, String>' do
      api_client = Deliverr::ApiClient.new
      headers = { 'Content-Type' => 'application/json' }
      response = double('response', headers: headers, body: '{"message": "Hello"}')
      data = api_client.deserialize(response, 'Hash<String, String>')
      expect(data).to be_instance_of(Hash)
      expect(data).to eq(:message => 'Hello')
    end
  end

  describe "#object_to_hash" do
    it 'ignores nils and includes empty arrays' do
      # uncomment below to test object_to_hash for model
      # api_client = Deliverr::ApiClient.new
      # _model = Deliverr::ModelName.new
      # update the model attribute below
      # _model.id = 1
      # update the expected value (hash) below
      # expected = {id: 1, name: '', tags: []}
      # expect(api_client.object_to_hash(_model)).to eq(expected)
    end
  end

  describe '#build_collection_param' do
    let(:param) { ['aa', 'bb', 'cc'] }
    let(:api_client) { Deliverr::ApiClient.new }

    it 'works for csv' do
      expect(api_client.build_collection_param(param, :csv)).to eq('aa,bb,cc')
    end

    it 'works for ssv' do
      expect(api_client.build_collection_param(param, :ssv)).to eq('aa bb cc')
    end

    it 'works for tsv' do
      expect(api_client.build_collection_param(param, :tsv)).to eq("aa\tbb\tcc")
    end

    it 'works for pipes' do
      expect(api_client.build_collection_param(param, :pipes)).to eq('aa|bb|cc')
    end

    it 'works for multi' do
      expect(api_client.build_collection_param(param, :multi)).to eq(['aa', 'bb', 'cc'])
    end

    it 'fails for invalid collection format' do
      expect { api_client.build_collection_param(param, :INVALID) }.to raise_error(RuntimeError, 'unknown collection format: :INVALID')
    end
  end

  describe '#json_mime?' do
    let(:api_client) { Deliverr::ApiClient.new }

    it 'works' do
      expect(api_client.json_mime?(nil)).to eq false
      expect(api_client.json_mime?('')).to eq false

      expect(api_client.json_mime?('application/json')).to eq true
      expect(api_client.json_mime?('application/json; charset=UTF8')).to eq true
      expect(api_client.json_mime?('APPLICATION/JSON')).to eq true

      expect(api_client.json_mime?('application/xml')).to eq false
      expect(api_client.json_mime?('text/plain')).to eq false
      expect(api_client.json_mime?('application/jsonp')).to eq false
    end
  end

  describe '#select_header_accept' do
    let(:api_client) { Deliverr::ApiClient.new }

    it 'works' do
      expect(api_client.select_header_accept(nil)).to be_nil
      expect(api_client.select_header_accept([])).to be_nil

      expect(api_client.select_header_accept(['application/json'])).to eq('application/json')
      expect(api_client.select_header_accept(['application/xml', 'application/json; charset=UTF8'])).to eq('application/json; charset=UTF8')
      expect(api_client.select_header_accept(['APPLICATION/JSON', 'text/html'])).to eq('APPLICATION/JSON')

      expect(api_client.select_header_accept(['application/xml'])).to eq('application/xml')
      expect(api_client.select_header_accept(['text/html', 'application/xml'])).to eq('text/html,application/xml')
    end
  end

  describe '#select_header_content_type' do
    let(:api_client) { Deliverr::ApiClient.new }

    it 'works' do
      expect(api_client.select_header_content_type(nil)).to be_nil
      expect(api_client.select_header_content_type([])).to be_nil

      expect(api_client.select_header_content_type(['application/json'])).to eq('application/json')
      expect(api_client.select_header_content_type(['application/xml', 'application/json; charset=UTF8'])).to eq('application/json; charset=UTF8')
      expect(api_client.select_header_content_type(['APPLICATION/JSON', 'text/html'])).to eq('APPLICATION/JSON')
      expect(api_client.select_header_content_type(['application/xml'])).to eq('application/xml')
      expect(api_client.select_header_content_type(['text/plain', 'application/xml'])).to eq('text/plain')
    end
  end

  describe '#sanitize_filename' do
    let(:api_client) { Deliverr::ApiClient.new }

    it 'works' do
      expect(api_client.sanitize_filename('sun')).to eq('sun')
      expect(api_client.sanitize_filename('sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('../sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('/var/tmp/sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('./sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('..\sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('\var\tmp\sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('c:\var\tmp\sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('.\sun.gif')).to eq('sun.gif')
    end
  end
end
