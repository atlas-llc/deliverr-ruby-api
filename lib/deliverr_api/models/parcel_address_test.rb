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
  class ParcelAddressTest
    # Name of entity.
    attr_accessor :name

    # First address line of the address.
    attr_accessor :street1

    # Second address line of the address.
    attr_accessor :street2

    # Company name for the entity.
    attr_accessor :company

    # City of the address.
    attr_accessor :city

    # State of the address - The 2-letter state postal abbreviation of one of the continental states (Alaska [AK], Hawaii [HI], and US Territories are not supported).
    attr_accessor :state

    # Postal code of the address.
    attr_accessor :zip

    attr_accessor :country

    # Email for the entity
    attr_accessor :email

    # Phone for the entity
    attr_accessor :phone

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
        :'name' => :'name',
        :'street1' => :'street1',
        :'street2' => :'street2',
        :'company' => :'company',
        :'city' => :'city',
        :'state' => :'state',
        :'zip' => :'zip',
        :'country' => :'country',
        :'email' => :'email',
        :'phone' => :'phone'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'street1' => :'String',
        :'street2' => :'String',
        :'company' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'zip' => :'String',
        :'country' => :'ParcelCountryCodeTest',
        :'email' => :'String',
        :'phone' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DeliverrAPI::ParcelAddressTest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DeliverrAPI::ParcelAddressTest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'street1')
        self.street1 = attributes[:'street1']
      end

      if attributes.key?(:'street2')
        self.street2 = attributes[:'street2']
      end

      if attributes.key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'zip')
        self.zip = attributes[:'zip']
      end

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @name.to_s.length > 35
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 35.')
      end

      if @name.to_s.length < 3
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 3.')
      end

      if @street1.nil?
        invalid_properties.push('invalid value for "street1", street1 cannot be nil.')
      end

      if @street1.to_s.length > 50
        invalid_properties.push('invalid value for "street1", the character length must be smaller than or equal to 50.')
      end

      if !@street2.nil? && @street2.to_s.length > 30
        invalid_properties.push('invalid value for "street2", the character length must be smaller than or equal to 30.')
      end

      if !@company.nil? && @company.to_s.length > 30
        invalid_properties.push('invalid value for "company", the character length must be smaller than or equal to 30.')
      end

      if @city.nil?
        invalid_properties.push('invalid value for "city", city cannot be nil.')
      end

      if @city.to_s.length > 30
        invalid_properties.push('invalid value for "city", the character length must be smaller than or equal to 30.')
      end

      if @state.nil?
        invalid_properties.push('invalid value for "state", state cannot be nil.')
      end

      if @state.to_s.length > 30
        invalid_properties.push('invalid value for "state", the character length must be smaller than or equal to 30.')
      end

      if @zip.nil?
        invalid_properties.push('invalid value for "zip", zip cannot be nil.')
      end

      if @zip.to_s.length > 30
        invalid_properties.push('invalid value for "zip", the character length must be smaller than or equal to 30.')
      end

      if @country.nil?
        invalid_properties.push('invalid value for "country", country cannot be nil.')
      end

      if !@email.nil? && @email.to_s.length < 3
        invalid_properties.push('invalid value for "email", the character length must be great than or equal to 3.')
      end

      if !@phone.nil? && @phone.to_s.length > 30
        invalid_properties.push('invalid value for "phone", the character length must be smaller than or equal to 30.')
      end

      if !@phone.nil? && @phone.to_s.length < 5
        invalid_properties.push('invalid value for "phone", the character length must be great than or equal to 5.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 35
      return false if @name.to_s.length < 3
      return false if @street1.nil?
      return false if @street1.to_s.length > 50
      return false if !@street2.nil? && @street2.to_s.length > 30
      return false if !@company.nil? && @company.to_s.length > 30
      return false if @city.nil?
      return false if @city.to_s.length > 30
      return false if @state.nil?
      return false if @state.to_s.length > 30
      return false if @zip.nil?
      return false if @zip.to_s.length > 30
      return false if @country.nil?
      return false if !@email.nil? && @email.to_s.length < 3
      return false if !@phone.nil? && @phone.to_s.length > 30
      return false if !@phone.nil? && @phone.to_s.length < 5
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 35
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 35.'
      end

      if name.to_s.length < 3
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 3.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] street1 Value to be assigned
    def street1=(street1)
      if street1.nil?
        fail ArgumentError, 'street1 cannot be nil'
      end

      if street1.to_s.length > 50
        fail ArgumentError, 'invalid value for "street1", the character length must be smaller than or equal to 50.'
      end

      @street1 = street1
    end

    # Custom attribute writer method with validation
    # @param [Object] street2 Value to be assigned
    def street2=(street2)
      if !street2.nil? && street2.to_s.length > 30
        fail ArgumentError, 'invalid value for "street2", the character length must be smaller than or equal to 30.'
      end

      @street2 = street2
    end

    # Custom attribute writer method with validation
    # @param [Object] company Value to be assigned
    def company=(company)
      if !company.nil? && company.to_s.length > 30
        fail ArgumentError, 'invalid value for "company", the character length must be smaller than or equal to 30.'
      end

      @company = company
    end

    # Custom attribute writer method with validation
    # @param [Object] city Value to be assigned
    def city=(city)
      if city.nil?
        fail ArgumentError, 'city cannot be nil'
      end

      if city.to_s.length > 30
        fail ArgumentError, 'invalid value for "city", the character length must be smaller than or equal to 30.'
      end

      @city = city
    end

    # Custom attribute writer method with validation
    # @param [Object] state Value to be assigned
    def state=(state)
      if state.nil?
        fail ArgumentError, 'state cannot be nil'
      end

      if state.to_s.length > 30
        fail ArgumentError, 'invalid value for "state", the character length must be smaller than or equal to 30.'
      end

      @state = state
    end

    # Custom attribute writer method with validation
    # @param [Object] zip Value to be assigned
    def zip=(zip)
      if zip.nil?
        fail ArgumentError, 'zip cannot be nil'
      end

      if zip.to_s.length > 30
        fail ArgumentError, 'invalid value for "zip", the character length must be smaller than or equal to 30.'
      end

      @zip = zip
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if !email.nil? && email.to_s.length < 3
        fail ArgumentError, 'invalid value for "email", the character length must be great than or equal to 3.'
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] phone Value to be assigned
    def phone=(phone)
      if !phone.nil? && phone.to_s.length > 30
        fail ArgumentError, 'invalid value for "phone", the character length must be smaller than or equal to 30.'
      end

      if !phone.nil? && phone.to_s.length < 5
        fail ArgumentError, 'invalid value for "phone", the character length must be great than or equal to 5.'
      end

      @phone = phone
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          street1 == o.street1 &&
          street2 == o.street2 &&
          company == o.company &&
          city == o.city &&
          state == o.state &&
          zip == o.zip &&
          country == o.country &&
          email == o.email &&
          phone == o.phone
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, street1, street2, company, city, state, zip, country, email, phone].hash
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
        klass = DeliverrAPI.const_get(type)
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
