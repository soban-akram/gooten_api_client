=begin
Gooten API

An overview of the various API methods that Gooten offers, including examples of each.

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'date'

module GootenApiClient
  class OrderPayment
    attr_accessor :braintree_encrypted_cc_number

    attr_accessor :braintree_encrypted_cc_exp_date

    attr_accessor :braintree_encrypted_ccv

    attr_accessor :braintree_payment_nonce

    # A code that when passed allows the order to be submitted on credit.
    attr_accessor :partner_billing_key

    attr_accessor :total

    attr_accessor :currency_code

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'braintree_encrypted_cc_number' => :'BraintreeEncryptedCCNumber',
        
        :'braintree_encrypted_cc_exp_date' => :'BraintreeEncryptedCCExpDate',
        
        :'braintree_encrypted_ccv' => :'BraintreeEncryptedCCV',
        
        :'braintree_payment_nonce' => :'BraintreePaymentNonce',
        
        :'partner_billing_key' => :'PartnerBillingKey',
        
        :'total' => :'Total',
        
        :'currency_code' => :'CurrencyCode'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'braintree_encrypted_cc_number' => :'String',
        :'braintree_encrypted_cc_exp_date' => :'String',
        :'braintree_encrypted_ccv' => :'String',
        :'braintree_payment_nonce' => :'String',
        :'partner_billing_key' => :'String',
        :'total' => :'Integer',
        :'currency_code' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'BraintreeEncryptedCCNumber']
        self.braintree_encrypted_cc_number = attributes[:'BraintreeEncryptedCCNumber']
      end
      
      if attributes[:'BraintreeEncryptedCCExpDate']
        self.braintree_encrypted_cc_exp_date = attributes[:'BraintreeEncryptedCCExpDate']
      end
      
      if attributes[:'BraintreeEncryptedCCV']
        self.braintree_encrypted_ccv = attributes[:'BraintreeEncryptedCCV']
      end
      
      if attributes[:'BraintreePaymentNonce']
        self.braintree_payment_nonce = attributes[:'BraintreePaymentNonce']
      end
      
      if attributes[:'PartnerBillingKey']
        self.partner_billing_key = attributes[:'PartnerBillingKey']
      end
      
      if attributes[:'Total']
        self.total = attributes[:'Total']
      end
      
      if attributes[:'CurrencyCode']
        self.currency_code = attributes[:'CurrencyCode']
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          braintree_encrypted_cc_number == o.braintree_encrypted_cc_number &&
          braintree_encrypted_cc_exp_date == o.braintree_encrypted_cc_exp_date &&
          braintree_encrypted_ccv == o.braintree_encrypted_ccv &&
          braintree_payment_nonce == o.braintree_payment_nonce &&
          partner_billing_key == o.partner_billing_key &&
          total == o.total &&
          currency_code == o.currency_code
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [braintree_encrypted_cc_number, braintree_encrypted_cc_exp_date, braintree_encrypted_ccv, braintree_payment_nonce, partner_billing_key, total, currency_code].hash
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
