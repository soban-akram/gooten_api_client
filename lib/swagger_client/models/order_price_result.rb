=begin


OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'date'

module SwaggerClient
  class OrderPriceResult
    attr_accessor :items

    attr_accessor :shipping

    attr_accessor :tax

    attr_accessor :coupon_code

    attr_accessor :coupon_type

    attr_accessor :coupon_used

    attr_accessor :had_coupon_apply

    attr_accessor :dollars_off

    attr_accessor :percent_off

    attr_accessor :had_error

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'items' => :'Items',
        
        :'shipping' => :'Shipping',
        
        :'tax' => :'Tax',
        
        :'coupon_code' => :'CouponCode',
        
        :'coupon_type' => :'CouponType',
        
        :'coupon_used' => :'CouponUsed',
        
        :'had_coupon_apply' => :'HadCouponApply',
        
        :'dollars_off' => :'DollarsOff',
        
        :'percent_off' => :'PercentOff',
        
        :'had_error' => :'HadError'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'items' => :'PriceInfo',
        :'shipping' => :'PriceInfo',
        :'tax' => :'PriceInfo',
        :'coupon_code' => :'PriceInfo',
        :'coupon_type' => :'String',
        :'coupon_used' => :'String',
        :'had_coupon_apply' => :'BOOLEAN',
        :'dollars_off' => :'Integer',
        :'percent_off' => :'Integer',
        :'had_error' => :'BOOLEAN'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Items']
        self.items = attributes[:'Items']
      end
      
      if attributes[:'Shipping']
        self.shipping = attributes[:'Shipping']
      end
      
      if attributes[:'Tax']
        self.tax = attributes[:'Tax']
      end
      
      if attributes[:'CouponCode']
        self.coupon_code = attributes[:'CouponCode']
      end
      
      if attributes[:'CouponType']
        self.coupon_type = attributes[:'CouponType']
      end
      
      if attributes[:'CouponUsed']
        self.coupon_used = attributes[:'CouponUsed']
      end
      
      if attributes[:'HadCouponApply']
        self.had_coupon_apply = attributes[:'HadCouponApply']
      end
      
      if attributes[:'DollarsOff']
        self.dollars_off = attributes[:'DollarsOff']
      end
      
      if attributes[:'PercentOff']
        self.percent_off = attributes[:'PercentOff']
      end
      
      if attributes[:'HadError']
        self.had_error = attributes[:'HadError']
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          items == o.items &&
          shipping == o.shipping &&
          tax == o.tax &&
          coupon_code == o.coupon_code &&
          coupon_type == o.coupon_type &&
          coupon_used == o.coupon_used &&
          had_coupon_apply == o.had_coupon_apply &&
          dollars_off == o.dollars_off &&
          percent_off == o.percent_off &&
          had_error == o.had_error
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [items, shipping, tax, coupon_code, coupon_type, coupon_used, had_coupon_apply, dollars_off, percent_off, had_error].hash
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
        _model = SwaggerClient.const_get(type).new
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
