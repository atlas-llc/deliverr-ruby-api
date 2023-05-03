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
  class StorageApiInboundResponse
    # unique Id for storage Inbound
    attr_accessor :id

    # Details of Items for StorageInbound
    attr_accessor :storage_items

    # Date of creation Of StorageInbound
    attr_accessor :created_at

    attr_accessor :updated_at

    # PO/Asn for the StorageInbound
    attr_accessor :asn_id

    # Shipping Plan Id for storageInbound
    attr_accessor :shipping_plan_id

    # ShipmentId Id for storageInbound
    attr_accessor :shipment_id

    # Destination Warehouse Id for the StorageInbound
    attr_accessor :warehouse_id

    attr_accessor :from

    attr_accessor :to

    attr_accessor :status

    attr_accessor :shipment_type

    # sellerId for StorageInbound
    attr_accessor :seller_id

    attr_accessor :shipment_pro

    attr_accessor :bol_link

    attr_accessor :estimated_inbound_fee

    attr_accessor :charged_inbound_fee

    attr_accessor :currency

    attr_accessor :is_archived

    attr_accessor :arrival_expected_at

    # PalletCount for StorageInbound required for PALLETIZED Inbound
    attr_accessor :pallet_count

    # ContainerId for StorageInbound
    attr_accessor :container_id

    attr_accessor :container_size

    attr_accessor :estimated_storage_fee

    attr_accessor :estimated_unloading_fee

    # Shipping plan name for the storage inbound
    attr_accessor :shipping_plan_name

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'storage_items' => :'storageItems',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'asn_id' => :'asnId',
        :'shipping_plan_id' => :'shippingPlanId',
        :'shipment_id' => :'shipmentId',
        :'warehouse_id' => :'warehouseId',
        :'from' => :'from',
        :'to' => :'to',
        :'status' => :'status',
        :'shipment_type' => :'shipmentType',
        :'seller_id' => :'sellerId',
        :'shipment_pro' => :'shipmentPro',
        :'bol_link' => :'bolLink',
        :'estimated_inbound_fee' => :'estimatedInboundFee',
        :'charged_inbound_fee' => :'chargedInboundFee',
        :'currency' => :'currency',
        :'is_archived' => :'isArchived',
        :'arrival_expected_at' => :'arrivalExpectedAt',
        :'pallet_count' => :'palletCount',
        :'container_id' => :'containerId',
        :'container_size' => :'containerSize',
        :'estimated_storage_fee' => :'estimatedStorageFee',
        :'estimated_unloading_fee' => :'estimatedUnloadingFee',
        :'shipping_plan_name' => :'shippingPlanName'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Float',
        :'storage_items' => :'Array<StorageItem>',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'asn_id' => :'String',
        :'shipping_plan_id' => :'Float',
        :'shipment_id' => :'Float',
        :'warehouse_id' => :'String',
        :'from' => :'DeliverrAddress',
        :'to' => :'DeliverrAddress',
        :'status' => :'InboundStatus',
        :'shipment_type' => :'ShipmentType',
        :'seller_id' => :'String',
        :'shipment_pro' => :'String',
        :'bol_link' => :'String',
        :'estimated_inbound_fee' => :'Float',
        :'charged_inbound_fee' => :'Float',
        :'currency' => :'String',
        :'is_archived' => :'Boolean',
        :'arrival_expected_at' => :'Time',
        :'pallet_count' => :'Float',
        :'container_id' => :'String',
        :'container_size' => :'ContainerSize',
        :'estimated_storage_fee' => :'Float',
        :'estimated_unloading_fee' => :'Float',
        :'shipping_plan_name' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Deliverr::StorageApiInboundResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Deliverr::StorageApiInboundResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'storage_items')
        if (value = attributes[:'storage_items']).is_a?(Array)
          self.storage_items = value
        end
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'asn_id')
        self.asn_id = attributes[:'asn_id']
      end

      if attributes.key?(:'shipping_plan_id')
        self.shipping_plan_id = attributes[:'shipping_plan_id']
      end

      if attributes.key?(:'shipment_id')
        self.shipment_id = attributes[:'shipment_id']
      end

      if attributes.key?(:'warehouse_id')
        self.warehouse_id = attributes[:'warehouse_id']
      end

      if attributes.key?(:'from')
        self.from = attributes[:'from']
      end

      if attributes.key?(:'to')
        self.to = attributes[:'to']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'shipment_type')
        self.shipment_type = attributes[:'shipment_type']
      end

      if attributes.key?(:'seller_id')
        self.seller_id = attributes[:'seller_id']
      end

      if attributes.key?(:'shipment_pro')
        self.shipment_pro = attributes[:'shipment_pro']
      end

      if attributes.key?(:'bol_link')
        self.bol_link = attributes[:'bol_link']
      end

      if attributes.key?(:'estimated_inbound_fee')
        self.estimated_inbound_fee = attributes[:'estimated_inbound_fee']
      end

      if attributes.key?(:'charged_inbound_fee')
        self.charged_inbound_fee = attributes[:'charged_inbound_fee']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'is_archived')
        self.is_archived = attributes[:'is_archived']
      end

      if attributes.key?(:'arrival_expected_at')
        self.arrival_expected_at = attributes[:'arrival_expected_at']
      end

      if attributes.key?(:'pallet_count')
        self.pallet_count = attributes[:'pallet_count']
      end

      if attributes.key?(:'container_id')
        self.container_id = attributes[:'container_id']
      end

      if attributes.key?(:'container_size')
        self.container_size = attributes[:'container_size']
      end

      if attributes.key?(:'estimated_storage_fee')
        self.estimated_storage_fee = attributes[:'estimated_storage_fee']
      end

      if attributes.key?(:'estimated_unloading_fee')
        self.estimated_unloading_fee = attributes[:'estimated_unloading_fee']
      end

      if attributes.key?(:'shipping_plan_name')
        self.shipping_plan_name = attributes[:'shipping_plan_name']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @storage_items.nil?
        invalid_properties.push('invalid value for "storage_items", storage_items cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      if @shipping_plan_id.nil?
        invalid_properties.push('invalid value for "shipping_plan_id", shipping_plan_id cannot be nil.')
      end

      if @warehouse_id.nil?
        invalid_properties.push('invalid value for "warehouse_id", warehouse_id cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @shipment_type.nil?
        invalid_properties.push('invalid value for "shipment_type", shipment_type cannot be nil.')
      end

      if @seller_id.nil?
        invalid_properties.push('invalid value for "seller_id", seller_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @storage_items.nil?
      return false if @created_at.nil?
      return false if @updated_at.nil?
      return false if @shipping_plan_id.nil?
      return false if @warehouse_id.nil?
      return false if @status.nil?
      return false if @shipment_type.nil?
      return false if @seller_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          storage_items == o.storage_items &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          asn_id == o.asn_id &&
          shipping_plan_id == o.shipping_plan_id &&
          shipment_id == o.shipment_id &&
          warehouse_id == o.warehouse_id &&
          from == o.from &&
          to == o.to &&
          status == o.status &&
          shipment_type == o.shipment_type &&
          seller_id == o.seller_id &&
          shipment_pro == o.shipment_pro &&
          bol_link == o.bol_link &&
          estimated_inbound_fee == o.estimated_inbound_fee &&
          charged_inbound_fee == o.charged_inbound_fee &&
          currency == o.currency &&
          is_archived == o.is_archived &&
          arrival_expected_at == o.arrival_expected_at &&
          pallet_count == o.pallet_count &&
          container_id == o.container_id &&
          container_size == o.container_size &&
          estimated_storage_fee == o.estimated_storage_fee &&
          estimated_unloading_fee == o.estimated_unloading_fee &&
          shipping_plan_name == o.shipping_plan_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, storage_items, created_at, updated_at, asn_id, shipping_plan_id, shipment_id, warehouse_id, from, to, status, shipment_type, seller_id, shipment_pro, bol_link, estimated_inbound_fee, charged_inbound_fee, currency, is_archived, arrival_expected_at, pallet_count, container_id, container_size, estimated_storage_fee, estimated_unloading_fee, shipping_plan_name].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Deliverr.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
