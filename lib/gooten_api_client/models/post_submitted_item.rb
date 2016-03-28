=begin
Gooten API

An overview of the various API methods that Gooten offers, including examples of each.

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'date'

module GootenApiClient
  class PostSubmittedItem
    attr_accessor :sku

    attr_accessor :product_id

    # The type of product that was bought
    attr_accessor :product

    attr_accessor :quantity

    attr_accessor :status

    # Deprecated. Use the Shipments array as this will be removed in a future release.
    attr_accessor :tracking_number

    # Deprecated. Use the Shipments array as this will be removed in a future release.
    attr_accessor :tracking_url

    # Deprecated. Use the Shipments array as this will be removed in a future release.
    attr_accessor :ship_carrier_name

    attr_accessor :price

    attr_accessor :discount_amount

    # Partner's internal ID-- entirely optional
    attr_accessor :source_id

    # An optional Map<string,string> of misc properties.
    attr_accessor :meta

    attr_accessor :shipments

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'sku' => :'Sku',
        
        :'product_id' => :'ProductId',
        
        :'product' => :'Product',
        
        :'quantity' => :'Quantity',
        
        :'status' => :'Status',
        
        :'tracking_number' => :'TrackingNumber',
        
        :'tracking_url' => :'TrackingUrl',
        
        :'ship_carrier_name' => :'ShipCarrierName',
        
        :'price' => :'Price',
        
        :'discount_amount' => :'DiscountAmount',
        
        :'source_id' => :'SourceId',
        
        :'meta' => :'Meta',
        
        :'shipments' => :'Shipments'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'sku' => :'String',
        :'product_id' => :'Integer',
        :'product' => :'String',
        :'quantity' => :'Integer',
        :'status' => :'String',
        :'tracking_number' => :'String',
        :'tracking_url' => :'String',
        :'ship_carrier_name' => :'String',
        :'price' => :'ProductPriceInfo',
        :'discount_amount' => :'ProductPriceInfo',
        :'source_id' => :'String',
        :'meta' => :'Meta',
        :'shipments' => :'Array<Shipment>'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Sku']
        self.sku = attributes[:'Sku']
      end
      
      if attributes[:'ProductId']
        self.product_id = attributes[:'ProductId']
      end
      
      if attributes[:'Product']
        self.product = attributes[:'Product']
      end
      
      if attributes[:'Quantity']
        self.quantity = attributes[:'Quantity']
      end
      
      if attributes[:'Status']
        self.status = attributes[:'Status']
      end
      
      if attributes[:'TrackingNumber']
        self.tracking_number = attributes[:'TrackingNumber']
      end
      
      if attributes[:'TrackingUrl']
        self.tracking_url = attributes[:'TrackingUrl']
      end
      
      if attributes[:'ShipCarrierName']
        self.ship_carrier_name = attributes[:'ShipCarrierName']
      end
      
      if attributes[:'Price']
        self.price = attributes[:'Price']
      end
      
      if attributes[:'DiscountAmount']
        self.discount_amount = attributes[:'DiscountAmount']
      end
      
      if attributes[:'SourceId']
        self.source_id = attributes[:'SourceId']
      end
      
      if attributes[:'Meta']
        self.meta = attributes[:'Meta']
      end
      
      if attributes[:'Shipments']
        if (value = attributes[:'Shipments']).is_a?(Array)
          self.shipments = value
        end
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          sku == o.sku &&
          product_id == o.product_id &&
          product == o.product &&
          quantity == o.quantity &&
          status == o.status &&
          tracking_number == o.tracking_number &&
          tracking_url == o.tracking_url &&
          ship_carrier_name == o.ship_carrier_name &&
          price == o.price &&
          discount_amount == o.discount_amount &&
          source_id == o.source_id &&
          meta == o.meta &&
          shipments == o.shipments
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [sku, product_id, product, quantity, status, tracking_number, tracking_url, ship_carrier_name, price, discount_amount, source_id, meta, shipments].hash
    end

    # build the object from hash
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          else
            #TODO show warning in debug mode
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        else
          # data not found in attributes(hash), not an issue as the data can be optional
        end
      end

      self
    end

    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /^(true|t|yes|y|1)$/i
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
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        _model = GootenApiClient.const_get(type).new
        _model.build_from_hash(value)
      end
    end

    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_body (backward compatibility))
    def to_body
      to_hash
    end

    # return the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Method to output non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
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
