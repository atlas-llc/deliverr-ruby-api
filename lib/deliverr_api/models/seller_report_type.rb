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

module Deliverr
  class SellerReportType
    BILLING_INVOICES = "Billing-Invoices".freeze
    BILLING_CREDITS_BALANCE = "Billing-Credits_Balance".freeze
    INBOUNDS_PACKAGES = "Inbounds-Packages".freeze
    INBOUNDS_SHIPMENTS = "Inbounds-Shipments".freeze
    ORDERS_ALL_ORDERS = "Orders-All_Orders".freeze
    ORDERS_SHIPMENTS = "Orders-Shipments".freeze
    INVENTORY_LEVELS_TODAY = "Inventory-Levels_Today".freeze
    INVENTORY_UNITS_IN_LONG_TERM_STORAGE = "Inventory-Units_In_Long_Term_Storage".freeze
    INBOUNDS_MONTHLY_RECONCILIATION = "Inbounds-Monthly_Reconciliation".freeze
    INBOUNDS_SHIPPING_PLAN_RECONCILIATION = "Inbounds-Shipping_Plan_Reconciliation".freeze
    INBOUNDS_INVENTORY_RECONCILIATION = "Inbounds-Inventory_Reconciliation".freeze
    PRODUCTS_ALL_SKUS_WITH_ALIAS_COUNTS = "Products-All_SKUs_With_Alias_Counts".freeze
    PRODUCTS_AVAILABLE_SKUS_WITH_NO_ALIASES = "Products-Available_SKUs_With_No_Aliases".freeze
    PRODUCTS_AVAILABLE_SKUS_WITH_ALIAS_COUNTS = "Products-Available_SKUs_With_Alias_Counts".freeze
    PRODUCTS_SKUS_WITH_LINKED_ALIASES = "Products-SKUs_With_Linked_Aliases".freeze
    RETURNS_ALL_RETURNS = "Returns-All_Returns".freeze
    RETURNS_ALL_SKUS = "Returns-All_SKUs".freeze
    CLAIMS_CLAIMS_SUBMITTED = "Claims-Claims_Submitted".freeze
    PRICING_FULFILLMENT_FEES = "Pricing-Fulfillment_Fees".freeze
    INCIDENT_IMPACT_REPORT = "Incident-Impact_Report".freeze
    TRANSFERS_ALL_TRANSFERS = "Transfers-All_Transfers".freeze

    def self.all_vars
      @all_vars ||= [BILLING_INVOICES, BILLING_CREDITS_BALANCE, INBOUNDS_PACKAGES, INBOUNDS_SHIPMENTS, ORDERS_ALL_ORDERS, ORDERS_SHIPMENTS, INVENTORY_LEVELS_TODAY, INVENTORY_UNITS_IN_LONG_TERM_STORAGE, INBOUNDS_MONTHLY_RECONCILIATION, INBOUNDS_SHIPPING_PLAN_RECONCILIATION, INBOUNDS_INVENTORY_RECONCILIATION, PRODUCTS_ALL_SKUS_WITH_ALIAS_COUNTS, PRODUCTS_AVAILABLE_SKUS_WITH_NO_ALIASES, PRODUCTS_AVAILABLE_SKUS_WITH_ALIAS_COUNTS, PRODUCTS_SKUS_WITH_LINKED_ALIASES, RETURNS_ALL_RETURNS, RETURNS_ALL_SKUS, CLAIMS_CLAIMS_SUBMITTED, PRICING_FULFILLMENT_FEES, INCIDENT_IMPACT_REPORT, TRANSFERS_ALL_TRANSFERS].freeze
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
      return value if SellerReportType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #SellerReportType"
    end
  end
end