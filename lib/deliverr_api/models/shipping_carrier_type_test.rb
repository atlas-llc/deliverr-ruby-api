=begin
#Deliverr API

# **Note:** As of February 24 2023, Deliverr is not accepting new API accounts. Existing integrations already using the Deliverr API in production may continue usage and development.  All other Deliverr accounts initiating Deliverr API requests will be denied access. A new Logistics API is being developed by Shopify and will be replacing the Deliverr API.  # Getting Started  To start using the Deliverr API, you must have an active login account to the Deliverr web portal. To inbound physical inventory, ship orders, process returns or parcel transactions, you'll also need to set up a billing account.  ## If you do not already have a Deliverr account 1. Create an account for free at https://sellerportal.deliverr.com 2. When you are asked to choose an integration, you can click <b>Skip</b> at the upper right corner 3. Once you have logged in, you can start the OAuth process below  ## If you already have a Deliverr account 1. You can access the Products, Webhooks and Reports API immediately regardless of billing status 2. All other APIs available will require you to have set up billing with Deliverr 3. The Returns, Parcel, and Parcel Integration APIs are only accessible to select merchants  ## Guides and examples  Please visit the <a href='https://support.deliverr.com/hc/en-us/sections/6332705638423-Deliverr-API'>Deliverr API Guide</a> to view steps and code examples.  # Release Notes  Please refer to the following <a href='https://support.deliverr.com/hc/en-us/articles/9399822031383'>Deliverr API - Release Notes</a> help center article to view the most recent changes to Deliverr API.  # Status Page  You can find information about the current status of the API endpoints at <a href='https://deliverrstatus.com/'>deliverrstatus.com</a>  

The version of the OpenAPI document: 1.0.0
Contact: support@deliverr.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.5.0

=end

require 'date'
require 'time'

module DeliverrAPI
  class ShippingCarrierTypeTest
    USPS = "USPS".freeze
    FEDEX = "FEDEX".freeze
    UPS = "UPS".freeze
    DHL = "DHL".freeze
    DOORDASH = "DOORDASH".freeze
    ONTRAC = "ONTRAC".freeze
    LASERSHIP = "LASERSHIP".freeze
    LSO = "LSO".freeze
    PCF = "PCF".freeze
    AXLEHIRE = "AXLEHIRE".freeze
    FREIGHT = "FREIGHT".freeze
    COURIER = "COURIER".freeze
    BETTERTRUCKS = "BETTERTRUCKS".freeze
    TFORCE = "TFORCE".freeze
    UDS = "UDS".freeze
    CDL = "CDL".freeze
    DELIVERR = "DELIVERR".freeze
    GLS = "GLS".freeze

    def self.all_vars
      @all_vars ||= [USPS, FEDEX, UPS, DHL, DOORDASH, ONTRAC, LASERSHIP, LSO, PCF, AXLEHIRE, FREIGHT, COURIER, BETTERTRUCKS, TFORCE, UDS, CDL, DELIVERR, GLS].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if ShippingCarrierTypeTest.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #ShippingCarrierTypeTest"
    end
  end
end
