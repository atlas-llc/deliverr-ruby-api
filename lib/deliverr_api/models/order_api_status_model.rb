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
  # Order details for an order created with Deliverr via the Create Order endpoint.
  class OrderApiStatusModel
    # A unique order reference meaningful to the external system submitting the order.
    attr_accessor :external_order_id

    # The timestamp of creation in RFC 3339 format. e.g. 2017-07-21T17:32:28Z
    attr_accessor :created_at

    # The timestamp when last updated in RFC 3339 format. e.g. 2017-07-21T17:32:28Z
    attr_accessor :updated_at

    # The name of the system originating the order such as SHOPIFY, AMAZON, WEBSITE, WALMART or similar. Free text. This is a vital field if the source marketplace restricts which carriers are allowed to be used.
    attr_accessor :source

    # The order id or reference that is meaningful to the buyer and/or the system sourcing the order.
    attr_accessor :source_order_id

    attr_accessor :shipto_address

    # UTC datetime value for when the order should arrive at the buyer's address, based on expectations given to customers or set by the originating marketplace. See the Shipment SLA section of this method's documentation for details. This date time needs to be in the future and after orderShipmentTime.
    attr_accessor :order_delivery_time

    # UTC datetime value for when the order should should be ready for carrier pickup, based on expectations given to customers or set by the originating marketplace. See the Shipment SLA section of this method's documentation for details. This date time needs to be in the future and before orderDeliveryTime.
    attr_accessor :order_shipment_time

    # line items to be shipped in this order.
    attr_accessor :line_items

    # A unique identifier for this order.
    attr_accessor :order_id

    attr_accessor :status

    # UTC datetime value for when entier order (all packages) have been reported ready for carrier pickup.
    attr_accessor :order_shipped_time

    # UTC datetime value when the entire order (all packages) were reported as completing delivery to the buyer.
    attr_accessor :order_delivered_time

    # The shipment details if the order status is SHIPPED.
    attr_accessor :shipments

    # The fulfillment order's cost
    attr_accessor :cost

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
        :'external_order_id' => :'externalOrderId',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'source' => :'source',
        :'source_order_id' => :'sourceOrderId',
        :'shipto_address' => :'shiptoAddress',
        :'order_delivery_time' => :'orderDeliveryTime',
        :'order_shipment_time' => :'orderShipmentTime',
        :'line_items' => :'lineItems',
        :'order_id' => :'orderId',
        :'status' => :'status',
        :'order_shipped_time' => :'orderShippedTime',
        :'order_delivered_time' => :'orderDeliveredTime',
        :'shipments' => :'shipments',
        :'cost' => :'cost'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'external_order_id' => :'String',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'source' => :'String',
        :'source_order_id' => :'String',
        :'shipto_address' => :'Address',
        :'order_delivery_time' => :'Time',
        :'order_shipment_time' => :'Time',
        :'line_items' => :'Array<OrderApiLineItem>',
        :'order_id' => :'String',
        :'status' => :'ApiOrderStatus',
        :'order_shipped_time' => :'Time',
        :'order_delivered_time' => :'Time',
        :'shipments' => :'Array<OrderShipmentObject>',
        :'cost' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'order_shipped_time',
        :'order_delivered_time',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Deliverr::OrderApiStatusModel` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Deliverr::OrderApiStatusModel`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'external_order_id')
        self.external_order_id = attributes[:'external_order_id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.key?(:'source_order_id')
        self.source_order_id = attributes[:'source_order_id']
      end

      if attributes.key?(:'shipto_address')
        self.shipto_address = attributes[:'shipto_address']
      end

      if attributes.key?(:'order_delivery_time')
        self.order_delivery_time = attributes[:'order_delivery_time']
      end

      if attributes.key?(:'order_shipment_time')
        self.order_shipment_time = attributes[:'order_shipment_time']
      end

      if attributes.key?(:'line_items')
        if (value = attributes[:'line_items']).is_a?(Array)
          self.line_items = value
        end
      end

      if attributes.key?(:'order_id')
        self.order_id = attributes[:'order_id']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'order_shipped_time')
        self.order_shipped_time = attributes[:'order_shipped_time']
      end

      if attributes.key?(:'order_delivered_time')
        self.order_delivered_time = attributes[:'order_delivered_time']
      end

      if attributes.key?(:'shipments')
        if (value = attributes[:'shipments']).is_a?(Array)
          self.shipments = value
        end
      end

      if attributes.key?(:'cost')
        self.cost = attributes[:'cost']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @external_order_id.nil?
        invalid_properties.push('invalid value for "external_order_id", external_order_id cannot be nil.')
      end

      if @source.nil?
        invalid_properties.push('invalid value for "source", source cannot be nil.')
      end

      if @source_order_id.nil?
        invalid_properties.push('invalid value for "source_order_id", source_order_id cannot be nil.')
      end

      if @shipto_address.nil?
        invalid_properties.push('invalid value for "shipto_address", shipto_address cannot be nil.')
      end

      if @line_items.nil?
        invalid_properties.push('invalid value for "line_items", line_items cannot be nil.')
      end

      if @order_id.nil?
        invalid_properties.push('invalid value for "order_id", order_id cannot be nil.')
      end

      pattern = Regexp.new(/^\d+$/)
      if @order_id !~ pattern
        invalid_properties.push("invalid value for \"order_id\", must conform to the pattern #{pattern}.")
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @shipments.nil?
        invalid_properties.push('invalid value for "shipments", shipments cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @external_order_id.nil?
      return false if @source.nil?
      return false if @source_order_id.nil?
      return false if @shipto_address.nil?
      return false if @line_items.nil?
      return false if @order_id.nil?
      return false if @order_id !~ Regexp.new(/^\d+$/)
      return false if @status.nil?
      return false if @shipments.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] order_id Value to be assigned
    def order_id=(order_id)
      if order_id.nil?
        fail ArgumentError, 'order_id cannot be nil'
      end

      pattern = Regexp.new(/^\d+$/)
      if order_id !~ pattern
        fail ArgumentError, "invalid value for \"order_id\", must conform to the pattern #{pattern}."
      end

      @order_id = order_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          external_order_id == o.external_order_id &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          source == o.source &&
          source_order_id == o.source_order_id &&
          shipto_address == o.shipto_address &&
          order_delivery_time == o.order_delivery_time &&
          order_shipment_time == o.order_shipment_time &&
          line_items == o.line_items &&
          order_id == o.order_id &&
          status == o.status &&
          order_shipped_time == o.order_shipped_time &&
          order_delivered_time == o.order_delivered_time &&
          shipments == o.shipments &&
          cost == o.cost
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [external_order_id, created_at, updated_at, source, source_order_id, shipto_address, order_delivery_time, order_shipment_time, line_items, order_id, status, order_shipped_time, order_delivered_time, shipments, cost].hash
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
