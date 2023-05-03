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
  class ShippingServiceType
    USPS_PRIORITY = "USPS.PRIORITY".freeze
    USPS_EXPRESS_MAIL = "USPS.EXPRESS.MAIL".freeze
    USPS_FIRST_CLASS_MAIL = "USPS.FIRST.CLASS.MAIL".freeze
    USPS_PARCEL_SELECT_NONPRESORT = "USPS.PARCEL.SELECT.NONPRESORT".freeze
    USPS_MEDIA_MAIL_SINGLEPIECE = "USPS.MEDIA.MAIL.SINGLEPIECE".freeze
    USPS_FIRST_CLASS_MAIL_INTERNATIONAL = "USPS.FIRST.CLASS.MAIL.INTERNATIONAL".freeze
    USPS_PRIORITY_MAIL_INTERNATIONAL = "USPS.PRIORITY.MAIL.INTERNATIONAL".freeze
    USPS_EXPRESS_MAIL_INTERNATIONAL = "USPS.EXPRESS.MAIL.INTERNATIONAL".freeze
    FEDEX_GROUND = "FEDEX.GROUND".freeze
    FEDEX_GROUND_ECONOMY = "FEDEX.GROUND.ECONOMY".freeze
    FEDEX_HOME_DELIVERY = "FEDEX.HOME.DELIVERY".freeze
    FEDEX_SMARTPOST_STANDARD = "FEDEX.SMARTPOST.STANDARD".freeze
    FEDEX_2_DAY_SHIPPING = "FEDEX.2DAY.SHIPPING".freeze
    FEDEX_2_DAY_AM_SHIPPING = "FEDEX.2DAY.AM.SHIPPING".freeze
    FEDEX_EXPRESS_SAVER_ECONOMY = "FEDEX.EXPRESS.SAVER.ECONOMY".freeze
    FEDEX_OVERNIGHT_STANDARD = "FEDEX.OVERNIGHT.STANDARD".freeze
    FEDEX_PRIORITY_OVERNIGHT = "FEDEX.PRIORITY.OVERNIGHT".freeze
    FEDEX_INTERNATIONAL_ECONOMY = "FEDEX.INTERNATIONAL.ECONOMY".freeze
    FEDEX_INTERNATIONAL_PRIORITY = "FEDEX.INTERNATIONAL.PRIORITY".freeze
    FEDEX_FREIGHT_ECONOMY = "FEDEX.FREIGHT.ECONOMY".freeze
    UPS_STANDARD = "UPS.STANDARD".freeze
    UPS_GROUND = "UPS.GROUND".freeze
    UPS_3_DAY_SELECT = "UPS.3.DAY.SELECT".freeze
    UPS_2_ND_DAY_AIR = "UPS.2ND.DAY.AIR".freeze
    UPS_2_ND_DAY_AIR_AM = "UPS.2ND.DAY.AIR.AM".freeze
    UPS_NEXT_DAY_AIR = "UPS.NEXT.DAY.AIR".freeze
    UPS_NEXT_DAY_AIR_SAVER = "UPS.NEXT.DAY.AIR.SAVER".freeze
    UPS_NEXT_DAY_AIR_AM = "UPS.NEXT.DAY.AIR.AM".freeze
    UPS_MAIL_INNOVATIONS = "UPS.MAIL.INNOVATIONS".freeze
    UPS_SUREPOST = "UPS.SUREPOST".freeze
    UPS_SUREPOST_LIGHTWEIGHT = "UPS.SUREPOST.LIGHTWEIGHT".freeze
    UPS_WORLDWIDE_EXPRESS = "UPS.WORLDWIDE.EXPRESS".freeze
    UPS_WORLDWIDE_EXPRESS_PLUS = "UPS.WORLDWIDE.EXPRESS.PLUS".freeze
    UPS_WORLDWIDE_EXPEDITED = "UPS.WORLDWIDE.EXPEDITED".freeze
    DHL_EXPRESS_WORLDWIDE = "DHL.EXPRESS.WORLDWIDE".freeze
    DHL_PARCEL_EXP_MAX = "DHL.PARCEL.EXP.MAX".freeze
    DHL_PARCEL_PLUS_EXP_MAX = "DHL.PARCEL.PLUS.EXP.MAX".freeze
    DHL_PARCEL_EXP_MAX_ATL = "DHL.PARCEL.EXP.MAX.ATL".freeze
    DHL_PARCEL_PLUS_EXP_MAX_ATL = "DHL.PARCEL.PLUS.EXP.MAX.ATL".freeze
    DHL_PARCEL_EXP_MAX_BWI = "DHL.PARCEL.EXP.MAX.BWI".freeze
    DHL_PARCEL_PLUS_EXP_MAX_BWI = "DHL.PARCEL.PLUS.EXP.MAX.BWI".freeze
    DHL_PARCEL_EXP_MAX_CVG = "DHL.PARCEL.EXP.MAX.CVG".freeze
    DHL_PARCEL_PLUS_EXP_MAX_CVG = "DHL.PARCEL.PLUS.EXP.MAX.CVG".freeze
    DHL_PARCEL_EXP_MAX_LAX = "DHL.PARCEL.EXP.MAX.LAX".freeze
    DHL_PARCEL_PLUS_EXP_MAX_LAX = "DHL.PARCEL.PLUS.EXP.MAX.LAX".freeze
    DHL_PARCEL_EXP_MAX_DFW = "DHL.PARCEL.EXP.MAX.DFW".freeze
    DHL_PARCEL_PLUS_EXP_MAX_DFW = "DHL.PARCEL.PLUS.EXP.MAX.DFW".freeze
    DHL_PARCEL_EXP_MAX_ORD = "DHL.PARCEL.EXP.MAX.ORD".freeze
    DHL_PARCEL_PLUS_EXP_MAX_ORD = "DHL.PARCEL.PLUS.EXP.MAX.ORD".freeze
    DHL_PARCEL_EXP_MAX_EWR = "DHL.PARCEL.EXP.MAX.EWR".freeze
    DHL_PARCEL_PLUS_EXP_MAX_EWR = "DHL.PARCEL.PLUS.EXP.MAX.EWR".freeze
    DHL_PARCEL_EXP_MAX_RDU = "DHL.PARCEL.EXP.MAX.RDU".freeze
    DHL_PARCEL_PLUS_EXP_MAX_RDU = "DHL.PARCEL.PLUS.EXP.MAX.RDU".freeze
    DHL_PARCEL_EXP_MAX_SFO = "DHL.PARCEL.EXP.MAX.SFO".freeze
    DHL_PARCEL_PLUS_EXP_MAX_SFO = "DHL.PARCEL.PLUS.EXP.MAX.SFO".freeze
    DHL_PARCEL_EXP = "DHL.PARCEL.EXP".freeze
    DHL_PARCEL_PLUS_EXP = "DHL.PARCEL.PLUS.EXP".freeze
    DHL_PARCEL_GROUND = "DHL.PARCEL.GROUND".freeze
    DHL_PARCEL_INTERNATIONAL_DIRECT = "DHL.PARCEL.INTERNATIONAL.DIRECT".freeze
    DHL_PARCEL_INTERNATIONAL_STANDARD = "DHL.PARCEL.INTERNATIONAL.STANDARD".freeze
    DHL_PACKET_INTERNATIONAL = "DHL.PACKET.INTERNATIONAL".freeze
    DOORDASH_NEXT_DAY = "DOORDASH.NEXT.DAY".freeze
    DOORDASH_SAME_DAY = "DOORDASH.SAME.DAY".freeze
    ONTRAC_GROUND = "ONTRAC.GROUND".freeze
    ONTRAC_GROUND_BEN = "ONTRAC.GROUND.BEN".freeze
    ONTRAC_GROUND_LAS = "ONTRAC.GROUND.LAS".freeze
    ONTRAC_GROUND_LAX = "ONTRAC.GROUND.LAX".freeze
    ONTRAC_GROUND_RNO = "ONTRAC.GROUND.RNO".freeze
    LASERSHIP_ROUTED_DELIVERY = "LASERSHIP.ROUTED.DELIVERY".freeze
    LASERSHIP_ROUTED_DELIVERY_CLT = "LASERSHIP.ROUTED.DELIVERY.CLT".freeze
    LASERSHIP_ROUTED_DELIVERY_MCO = "LASERSHIP.ROUTED.DELIVERY.MCO".freeze
    LASERSHIP_ROUTED_DELIVERY_EWR = "LASERSHIP.ROUTED.DELIVERY.EWR".freeze
    LASERSHIP_ROUTED_DELIVERY_LCK = "LASERSHIP.ROUTED.DELIVERY.LCK".freeze
    LSO_GROUND = "LSO.GROUND".freeze
    LSO_GROUND_DFW = "LSO.GROUND.DFW".freeze
    LSO_ECOMM = "LSO.ECOMM".freeze
    PCF_STANDARD = "PCF.STANDARD".freeze
    PCF_2_ND_DAY = "PCF.2ND.DAY".freeze
    AXLEHIRE_NEXT_DAY = "AXLEHIRE.NEXT.DAY".freeze
    FREIGHT_LTL = "FREIGHT.LTL".freeze
    COURIER_PICKUP = "COURIER.PICKUP".freeze
    BETTERTRUCKS_SAME_DAY = "BETTERTRUCKS.SAME.DAY".freeze
    BETTERTRUCKS_EXPRESS = "BETTERTRUCKS.EXPRESS".freeze
    BETTERTRUCKS_ECONOMY = "BETTERTRUCKS.ECONOMY".freeze
    TFORCE_SAME_DAY = "TFORCE.SAME.DAY".freeze
    TFORCE_NEXT_DAY = "TFORCE.NEXT.DAY".freeze
    TFORCE_BOND_STANDARD = "TFORCE.BOND.STANDARD".freeze
    UDS_DELIVERY_SERVICE = "UDS.DELIVERY.SERVICE".freeze
    CDL_SAME_DAY = "CDL.SAME.DAY".freeze
    CDL_NEXT_DAY = "CDL.NEXT.DAY".freeze
    DELIVERR_SHIPPING = "DELIVERR.SHIPPING".freeze
    GLS_GROUND = "GLS.GROUND".freeze
    GLS_PRIORITY = "GLS.PRIORITY".freeze
    GLS_EARLY_PRIORITY = "GLS.EARLY.PRIORITY".freeze

    def self.all_vars
      @all_vars ||= [USPS_PRIORITY, USPS_EXPRESS_MAIL, USPS_FIRST_CLASS_MAIL, USPS_PARCEL_SELECT_NONPRESORT, USPS_MEDIA_MAIL_SINGLEPIECE, USPS_FIRST_CLASS_MAIL_INTERNATIONAL, USPS_PRIORITY_MAIL_INTERNATIONAL, USPS_EXPRESS_MAIL_INTERNATIONAL, FEDEX_GROUND, FEDEX_GROUND_ECONOMY, FEDEX_HOME_DELIVERY, FEDEX_SMARTPOST_STANDARD, FEDEX_2_DAY_SHIPPING, FEDEX_2_DAY_AM_SHIPPING, FEDEX_EXPRESS_SAVER_ECONOMY, FEDEX_OVERNIGHT_STANDARD, FEDEX_PRIORITY_OVERNIGHT, FEDEX_INTERNATIONAL_ECONOMY, FEDEX_INTERNATIONAL_PRIORITY, FEDEX_FREIGHT_ECONOMY, UPS_STANDARD, UPS_GROUND, UPS_3_DAY_SELECT, UPS_2_ND_DAY_AIR, UPS_2_ND_DAY_AIR_AM, UPS_NEXT_DAY_AIR, UPS_NEXT_DAY_AIR_SAVER, UPS_NEXT_DAY_AIR_AM, UPS_MAIL_INNOVATIONS, UPS_SUREPOST, UPS_SUREPOST_LIGHTWEIGHT, UPS_WORLDWIDE_EXPRESS, UPS_WORLDWIDE_EXPRESS_PLUS, UPS_WORLDWIDE_EXPEDITED, DHL_EXPRESS_WORLDWIDE, DHL_PARCEL_EXP_MAX, DHL_PARCEL_PLUS_EXP_MAX, DHL_PARCEL_EXP_MAX_ATL, DHL_PARCEL_PLUS_EXP_MAX_ATL, DHL_PARCEL_EXP_MAX_BWI, DHL_PARCEL_PLUS_EXP_MAX_BWI, DHL_PARCEL_EXP_MAX_CVG, DHL_PARCEL_PLUS_EXP_MAX_CVG, DHL_PARCEL_EXP_MAX_LAX, DHL_PARCEL_PLUS_EXP_MAX_LAX, DHL_PARCEL_EXP_MAX_DFW, DHL_PARCEL_PLUS_EXP_MAX_DFW, DHL_PARCEL_EXP_MAX_ORD, DHL_PARCEL_PLUS_EXP_MAX_ORD, DHL_PARCEL_EXP_MAX_EWR, DHL_PARCEL_PLUS_EXP_MAX_EWR, DHL_PARCEL_EXP_MAX_RDU, DHL_PARCEL_PLUS_EXP_MAX_RDU, DHL_PARCEL_EXP_MAX_SFO, DHL_PARCEL_PLUS_EXP_MAX_SFO, DHL_PARCEL_EXP, DHL_PARCEL_PLUS_EXP, DHL_PARCEL_GROUND, DHL_PARCEL_INTERNATIONAL_DIRECT, DHL_PARCEL_INTERNATIONAL_STANDARD, DHL_PACKET_INTERNATIONAL, DOORDASH_NEXT_DAY, DOORDASH_SAME_DAY, ONTRAC_GROUND, ONTRAC_GROUND_BEN, ONTRAC_GROUND_LAS, ONTRAC_GROUND_LAX, ONTRAC_GROUND_RNO, LASERSHIP_ROUTED_DELIVERY, LASERSHIP_ROUTED_DELIVERY_CLT, LASERSHIP_ROUTED_DELIVERY_MCO, LASERSHIP_ROUTED_DELIVERY_EWR, LASERSHIP_ROUTED_DELIVERY_LCK, LSO_GROUND, LSO_GROUND_DFW, LSO_ECOMM, PCF_STANDARD, PCF_2_ND_DAY, AXLEHIRE_NEXT_DAY, FREIGHT_LTL, COURIER_PICKUP, BETTERTRUCKS_SAME_DAY, BETTERTRUCKS_EXPRESS, BETTERTRUCKS_ECONOMY, TFORCE_SAME_DAY, TFORCE_NEXT_DAY, TFORCE_BOND_STANDARD, UDS_DELIVERY_SERVICE, CDL_SAME_DAY, CDL_NEXT_DAY, DELIVERR_SHIPPING, GLS_GROUND, GLS_PRIORITY, GLS_EARLY_PRIORITY].freeze
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
      return value if ShippingServiceType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #ShippingServiceType"
    end
  end
end
