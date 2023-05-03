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
  class WarehouseIdType
    ALP_JEF = "ALP_JEF".freeze
    AMP_DFW = "AMP_DFW".freeze
    APK_SFO = "APK_SFO".freeze
    ATL1_FC = "ATL1FC".freeze
    ATL2_RS = "ATL2RS".freeze
    BES_DAY = "BES_DAY".freeze
    BFF_DFW = "BFF_DFW".freeze
    BLU_MCO = "BLU_MCO".freeze
    BLU_ORL = "BLU_ORL".freeze
    BRL_ATL = "BRL_ATL".freeze
    BUR_FAR = "BUR_FAR".freeze
    BUR_SPA = "BUR_SPA".freeze
    CAR_JAC = "CAR_JAC".freeze
    CAR_LAS = "CAR_LAS".freeze
    CAR_LOG = "CAR_LOG".freeze
    CHA_MAR = "CHA_MAR".freeze
    CRE_EWR = "CRE_EWR".freeze
    CUS_CAR = "CUS_CAR".freeze
    CUS_LAX = "CUS_LAX".freeze
    DEP_DAY = "DEP_DAY".freeze
    DEV_TRA = "DEV_TRA".freeze
    DFW1_RS = "DFW1RS".freeze
    DFW33_P = "DFW33P".freeze
    DLV_LOGONE = "DLV_LOGONE".freeze
    DLV_LOGTHR = "DLV_LOGTHR".freeze
    DLV_LOGTWO = "DLV_LOGTWO".freeze
    DM_CA_FAT1 = "DM_CA_FAT1".freeze
    DM_MO_STL1 = "DM_MO_STL1".freeze
    DM_PA_MDT1 = "DM_PA_MDT1".freeze
    DM_TX_DFW1 = "DM_TX_DFW1".freeze
    DPX_LAX = "DPX_LAX".freeze
    DSD_FRA = "DSD_FRA".freeze
    DSD_ONT = "DSD_ONT".freeze
    DVN_CHG = "DVN_CHG".freeze
    EBI_LAW = "EBI_LAW".freeze
    ECO_RIV = "ECO_RIV".freeze
    ELE_RIV = "ELE_RIV".freeze
    ELT_ATL = "ELT_ATL".freeze
    ELT_TMP = "ELT_TMP".freeze
    END_CRE = "END_CRE".freeze
    ENR_CRE = "ENR_CRE".freeze
    ETV_GAR = "ETV_GAR".freeze
    EWR1_CD = "EWR1CD".freeze
    EWR1_PR = "EWR1PR".freeze
    EWR1_RS = "EWR1RS".freeze
    EWR23_P = "EWR23P".freeze
    FFE_TEX = "FFE_TEX".freeze
    FIL_BLA = "FIL_BLA".freeze
    FIL_PAR = "FIL_PAR".freeze
    FMS1_FC = "FMS1FC".freeze
    FMS2_FC = "FMS2FC".freeze
    FUL_BES_EWR = "FUL_BES_EWR".freeze
    FUL_FAF_DFW = "FUL_FAF_DFW".freeze
    FUL_GPA_PER = "FUL_GPA_PER".freeze
    FUL_GTH_ORD = "FUL_GTH_ORD".freeze
    FUL_IRM_EWR = "FUL_IRM_EWR".freeze
    FUL_NBD_ORD = "FUL_NBD_ORD".freeze
    GPA_COM = "GPA_COM".freeze
    GPA_EDI = "GPA_EDI".freeze
    GPA_FON = "GPA_FON".freeze
    GPA_ONT = "GPA_ONT".freeze
    GPA_RIV = "GPA_RIV".freeze
    HEY_CUS_LAX = "HEY_CUS_LAX".freeze
    HIB_ROB = "HIB_ROB".freeze
    HIB_TRE = "HIB_TRE".freeze
    HSS_GAR = "HSS_GAR".freeze
    HUB_ATL = "HUB_ATL".freeze
    HUB_DFW = "HUB_DFW".freeze
    HUB_EDI = "HUB_EDI".freeze
    HUB_FON = "HUB_FON".freeze
    HUB_ORD = "HUB_ORD".freeze
    IKM1_MOU = "IKM1MOU".freeze
    IKMLOG_MOU = "IKMLOG_MOU".freeze
    IKM_MOU = "IKM_MOU".freeze
    IKM_PHI = "IKM_PHI".freeze
    INV_ATL = "INV_ATL".freeze
    IRM_EWR = "IRM_EWR".freeze
    JAY1_LAN = "JAY1LAN".freeze
    JAY_LAN = "JAY_LAN".freeze
    KEN_JEF = "KEN_JEF".freeze
    KOM_EAS = "KOM_EAS".freeze
    LAN_REA = "LAN_REA".freeze
    MAI_ORD = "MAI_ORD".freeze
    MAV_LAN = "MAV_LAN".freeze
    MDT_EWR = "MDT_EWR".freeze
    MID_KAN = "MID_KAN".freeze
    MKO_MCO = "MKO_MCO".freeze
    MTR_ESV = "MTR_ESV".freeze
    NBD_MCD = "NBD_MCD".freeze
    NBD_SFO = "NBD_SFO".freeze
    NBD_SFO_002 = "NBD_SFO_002".freeze
    NBD_TMP = "NBD_TMP".freeze
    NBD_VAC = "NBD_VAC".freeze
    NEW_FLO = "NEW_FLO".freeze
    NFI_EWD = "NFI_EWD".freeze
    NIM_SFO = "NIM_SFO".freeze
    NOR_ERL = "NOR_ERL".freeze
    NOR_LAS = "NOR_LAS".freeze
    OCE_PER = "OCE_PER".freeze
    OPT1_ATL = "OPT1ATL".freeze
    OWD_COL = "OWD_COL".freeze
    OWD_MIR = "OWD_MIR".freeze
    OWD_MOB = "OWD_MOB".freeze
    PAR_ORD = "PAR_ORD".freeze
    PBD1_ALP = "PBD1ALP".freeze
    PBD1_BOL = "PBD1BOL".freeze
    PBD_ALP = "PBD_ALP".freeze
    PBD_BOL = "PBD_BOL".freeze
    PBD_DUL = "PBD_DUL".freeze
    PBD_LAS = "PBD_LAS".freeze
    PBD_SAV = "PBD_SAV".freeze
    PBD_TMP = "PBD_TMP".freeze
    POR_ATL = "POR_ATL".freeze
    PRO_DAL = "PRO_DAL".freeze
    PRO_EWR = "PRO_EWR".freeze
    PRO_NAP = "PRO_NAP".freeze
    PRO_ORD = "PRO_ORD".freeze
    PRO_RIC = "PRO_RIC".freeze
    PRP_GPA_EDI = "PRP_GPA_EDI".freeze
    PRP_GPA_FON = "PRP_GPA_FON".freeze
    PRV_MCD = "PRV_MCD".freeze
    PSL_ATL = "PSL_ATL".freeze
    REK1_SUN = "REK1SUN".freeze
    REK_SUN = "REK_SUN".freeze
    RES_FRE = "RES_FRE".freeze
    RNO13_P = "RNO13P".freeze
    ROY_LAX = "ROY_LAX".freeze
    ROY_NJS = "ROY_NJS".freeze
    RYD_FTW = "RYD_FTW".freeze
    RYD_PER = "RYD_PER".freeze
    RYD_SHO = "RYD_SHO".freeze
    SCB_FRE = "SCB_FRE".freeze
    SFL_ATL_001 = "SFL_ATL_001".freeze
    SFL_ATL_01 = "SFL_ATL_01".freeze
    SFW_SFS = "SFW_SFS".freeze
    STL13_P = "STL13P".freeze
    STO_AMP = "STO_AMP".freeze
    STO_COL_MCI = "STO_COL_MCI".freeze
    STO_CUS_LAX = "STO_CUS_LAX".freeze
    STO_EDI = "STO_EDI".freeze
    STO_EWR = "STO_EWR".freeze
    STO_FON = "STO_FON".freeze
    STO_GPA_EDI = "STO_GPA_EDI".freeze
    STO_GPA_RIV = "STO_GPA_RIV".freeze
    STO_IRM_EWR = "STO_IRM_EWR".freeze
    STO_IRM_PER = "STO_IRM_PER".freeze
    STO_MCI = "STO_MCI".freeze
    STO_NBD_VAC = "STO_NBD_VAC".freeze
    STO_PXR_LAX = "STO_PXR_LAX".freeze
    STO_PXR_VRN = "STO_PXR_VRN".freeze
    STO_SFL_ATL = "STO_SFL_ATL".freeze
    STO_TST_LOG = "STO_TST_LOG".freeze
    SWA_WAY = "SWA_WAY".freeze
    SWI_CAR = "SWI_CAR".freeze
    THU_CAR = "THU_CAR".freeze
    THU_CIT = "THU_CIT".freeze
    THU_HOU = "THU_HOU".freeze
    THU_POR = "THU_POR".freeze
    THU_TUC = "THU_TUC".freeze
    THU_WOO = "THU_WOO".freeze
    TLX_SAV = "TLX_SAV".freeze
    TRM_STC = "TRM_STC".freeze
    TSC_HOU = "TSC_HOU".freeze
    TST_FMS = "TST_FMS".freeze
    TST_LOG = "TST_LOG".freeze
    TST_VCR = "TST_VCR".freeze
    UNI_ORD = "UNI_ORD".freeze
    WAR_ROC = "WAR_ROC".freeze
    WAW_CHI = "WAW_CHI".freeze
    WAW_LAS = "WAW_LAS".freeze
    WPL_SFO = "WPL_SFO".freeze
    YOW13_P = "YOW13P".freeze
    YOW1_FC = "YOW1FC".freeze

    def self.all_vars
      @all_vars ||= [ALP_JEF, AMP_DFW, APK_SFO, ATL1_FC, ATL2_RS, BES_DAY, BFF_DFW, BLU_MCO, BLU_ORL, BRL_ATL, BUR_FAR, BUR_SPA, CAR_JAC, CAR_LAS, CAR_LOG, CHA_MAR, CRE_EWR, CUS_CAR, CUS_LAX, DEP_DAY, DEV_TRA, DFW1_RS, DFW33_P, DLV_LOGONE, DLV_LOGTHR, DLV_LOGTWO, DM_CA_FAT1, DM_MO_STL1, DM_PA_MDT1, DM_TX_DFW1, DPX_LAX, DSD_FRA, DSD_ONT, DVN_CHG, EBI_LAW, ECO_RIV, ELE_RIV, ELT_ATL, ELT_TMP, END_CRE, ENR_CRE, ETV_GAR, EWR1_CD, EWR1_PR, EWR1_RS, EWR23_P, FFE_TEX, FIL_BLA, FIL_PAR, FMS1_FC, FMS2_FC, FUL_BES_EWR, FUL_FAF_DFW, FUL_GPA_PER, FUL_GTH_ORD, FUL_IRM_EWR, FUL_NBD_ORD, GPA_COM, GPA_EDI, GPA_FON, GPA_ONT, GPA_RIV, HEY_CUS_LAX, HIB_ROB, HIB_TRE, HSS_GAR, HUB_ATL, HUB_DFW, HUB_EDI, HUB_FON, HUB_ORD, IKM1_MOU, IKMLOG_MOU, IKM_MOU, IKM_PHI, INV_ATL, IRM_EWR, JAY1_LAN, JAY_LAN, KEN_JEF, KOM_EAS, LAN_REA, MAI_ORD, MAV_LAN, MDT_EWR, MID_KAN, MKO_MCO, MTR_ESV, NBD_MCD, NBD_SFO, NBD_SFO_002, NBD_TMP, NBD_VAC, NEW_FLO, NFI_EWD, NIM_SFO, NOR_ERL, NOR_LAS, OCE_PER, OPT1_ATL, OWD_COL, OWD_MIR, OWD_MOB, PAR_ORD, PBD1_ALP, PBD1_BOL, PBD_ALP, PBD_BOL, PBD_DUL, PBD_LAS, PBD_SAV, PBD_TMP, POR_ATL, PRO_DAL, PRO_EWR, PRO_NAP, PRO_ORD, PRO_RIC, PRP_GPA_EDI, PRP_GPA_FON, PRV_MCD, PSL_ATL, REK1_SUN, REK_SUN, RES_FRE, RNO13_P, ROY_LAX, ROY_NJS, RYD_FTW, RYD_PER, RYD_SHO, SCB_FRE, SFL_ATL_001, SFL_ATL_01, SFW_SFS, STL13_P, STO_AMP, STO_COL_MCI, STO_CUS_LAX, STO_EDI, STO_EWR, STO_FON, STO_GPA_EDI, STO_GPA_RIV, STO_IRM_EWR, STO_IRM_PER, STO_MCI, STO_NBD_VAC, STO_PXR_LAX, STO_PXR_VRN, STO_SFL_ATL, STO_TST_LOG, SWA_WAY, SWI_CAR, THU_CAR, THU_CIT, THU_HOU, THU_POR, THU_TUC, THU_WOO, TLX_SAV, TRM_STC, TSC_HOU, TST_FMS, TST_LOG, TST_VCR, UNI_ORD, WAR_ROC, WAW_CHI, WAW_LAS, WPL_SFO, YOW13_P, YOW1_FC].freeze
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
      return value if WarehouseIdType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #WarehouseIdType"
    end
  end
end
