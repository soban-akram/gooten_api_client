=begin
Gooten API

An overview of the various API methods that Gooten offers, including examples of each.

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

# Common files
require 'gooten_api_client/api_client'
require 'gooten_api_client/api_error'
require 'gooten_api_client/version'
require 'gooten_api_client/configuration'

# Models
require 'gooten_api_client/models/address'
require 'gooten_api_client/models/category'
require 'gooten_api_client/models/country'
require 'gooten_api_client/models/country_list'
require 'gooten_api_client/models/currency'
require 'gooten_api_client/models/file_result'
require 'gooten_api_client/models/image'
require 'gooten_api_client/models/image_size_vm'
require 'gooten_api_client/models/image_validation_vm'
require 'gooten_api_client/models/image_validator_result'
require 'gooten_api_client/models/item'
require 'gooten_api_client/models/key_value_pair'
require 'gooten_api_client/models/language_dictionary'
require 'gooten_api_client/models/meta'
require 'gooten_api_client/models/order'
require 'gooten_api_client/models/order_item'
require 'gooten_api_client/models/order_item_image'
require 'gooten_api_client/models/order_payment'
require 'gooten_api_client/models/order_price_result'
require 'gooten_api_client/models/order_result'
require 'gooten_api_client/models/order_status_update_result'
require 'gooten_api_client/models/payment'
require 'gooten_api_client/models/payment_validation_request'
require 'gooten_api_client/models/payment_validation_response'
require 'gooten_api_client/models/post_order'
require 'gooten_api_client/models/post_order_item'
require 'gooten_api_client/models/post_submitted_item'
require 'gooten_api_client/models/post_submitted_order'
require 'gooten_api_client/models/preconfiguration'
require 'gooten_api_client/models/preconfigured_item'
require 'gooten_api_client/models/preconfigured_product'
require 'gooten_api_client/models/preconfigured_product_image'
require 'gooten_api_client/models/preconfigured_product_insert'
require 'gooten_api_client/models/preconfigured_products_insert_response'
require 'gooten_api_client/models/preconfigured_products_response'
require 'gooten_api_client/models/price_info'
require 'gooten_api_client/models/product'
require 'gooten_api_client/models/product_build_info'
require 'gooten_api_client/models/product_build_info_response'
require 'gooten_api_client/models/product_build_info_space'
require 'gooten_api_client/models/product_build_option'
require 'gooten_api_client/models/product_image'
require 'gooten_api_client/models/product_info'
require 'gooten_api_client/models/product_list'
require 'gooten_api_client/models/product_option'
require 'gooten_api_client/models/product_option_list'
require 'gooten_api_client/models/product_option_value_settings'
require 'gooten_api_client/models/product_preview_image'
require 'gooten_api_client/models/product_preview_image_spec'
require 'gooten_api_client/models/product_preview_request'
require 'gooten_api_client/models/product_preview_response'
require 'gooten_api_client/models/product_price_info'
require 'gooten_api_client/models/product_variant'
require 'gooten_api_client/models/product_variant_response'
require 'gooten_api_client/models/result'
require 'gooten_api_client/models/search_submitted_order'
require 'gooten_api_client/models/ship_estimate'
require 'gooten_api_client/models/ship_item'
require 'gooten_api_client/models/ship_option'
require 'gooten_api_client/models/ship_price'
require 'gooten_api_client/models/ship_to_address'
require 'gooten_api_client/models/shipment'
require 'gooten_api_client/models/shipping_prices_request'
require 'gooten_api_client/models/shipping_prices_result'
require 'gooten_api_client/models/sku_quantity_pair'
require 'gooten_api_client/models/submitted_order'
require 'gooten_api_client/models/submitted_order_list'
require 'gooten_api_client/models/user_info'
require 'gooten_api_client/models/validation_failure'

# APIs
require 'gooten_api_client/api/addressvalidation_api'
require 'gooten_api_client/api/countries_api'
require 'gooten_api_client/api/images_api'
require 'gooten_api_client/api/imagevalidation_api'
require 'gooten_api_client/api/languages_api'
require 'gooten_api_client/api/orders_api'
require 'gooten_api_client/api/ordersearch_api'
require 'gooten_api_client/api/orderstatus_api'
require 'gooten_api_client/api/paymentvalidation_api'
require 'gooten_api_client/api/preconfiguredproducts_api'
require 'gooten_api_client/api/priceestimate_api'
require 'gooten_api_client/api/productpreview_api'
require 'gooten_api_client/api/products_api'
require 'gooten_api_client/api/producttemplates_api'
require 'gooten_api_client/api/productvariants_api'
require 'gooten_api_client/api/shippingprices_api'
require 'gooten_api_client/api/shippriceestimate_api'
require 'gooten_api_client/api/userinfo_api'

module GootenApiClient
  class << self
    # Customize default settings for the SDK using block.
    #   GootenApiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
