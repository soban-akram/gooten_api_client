=begin


OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

# Common files
require 'swagger_client/api_client'
require 'swagger_client/api_error'
require 'swagger_client/version'
require 'swagger_client/configuration'

# Models
require 'swagger_client/models/address'
require 'swagger_client/models/category'
require 'swagger_client/models/country'
require 'swagger_client/models/country_list'
require 'swagger_client/models/currency'
require 'swagger_client/models/file_result'
require 'swagger_client/models/image'
require 'swagger_client/models/image_size_vm'
require 'swagger_client/models/image_validation_vm'
require 'swagger_client/models/image_validator_result'
require 'swagger_client/models/item'
require 'swagger_client/models/key_value_pair'
require 'swagger_client/models/language_dictionary'
require 'swagger_client/models/meta'
require 'swagger_client/models/order'
require 'swagger_client/models/order_item'
require 'swagger_client/models/order_item_image'
require 'swagger_client/models/order_payment'
require 'swagger_client/models/order_price_result'
require 'swagger_client/models/order_result'
require 'swagger_client/models/order_status_update_result'
require 'swagger_client/models/payment'
require 'swagger_client/models/payment_validation_request'
require 'swagger_client/models/payment_validation_response'
require 'swagger_client/models/post_order'
require 'swagger_client/models/post_order_item'
require 'swagger_client/models/post_submitted_item'
require 'swagger_client/models/post_submitted_order'
require 'swagger_client/models/preconfiguration'
require 'swagger_client/models/preconfigured_item'
require 'swagger_client/models/preconfigured_product'
require 'swagger_client/models/preconfigured_product_image'
require 'swagger_client/models/preconfigured_product_insert'
require 'swagger_client/models/preconfigured_products_insert_response'
require 'swagger_client/models/preconfigured_products_response'
require 'swagger_client/models/price_info'
require 'swagger_client/models/product'
require 'swagger_client/models/product_build_info'
require 'swagger_client/models/product_build_info_response'
require 'swagger_client/models/product_build_info_space'
require 'swagger_client/models/product_build_option'
require 'swagger_client/models/product_image'
require 'swagger_client/models/product_info'
require 'swagger_client/models/product_list'
require 'swagger_client/models/product_option'
require 'swagger_client/models/product_option_list'
require 'swagger_client/models/product_option_value_settings'
require 'swagger_client/models/product_preview_image'
require 'swagger_client/models/product_preview_image_spec'
require 'swagger_client/models/product_preview_request'
require 'swagger_client/models/product_preview_response'
require 'swagger_client/models/product_price_info'
require 'swagger_client/models/product_variant'
require 'swagger_client/models/product_variant_response'
require 'swagger_client/models/result'
require 'swagger_client/models/search_submitted_order'
require 'swagger_client/models/ship_estimate'
require 'swagger_client/models/ship_item'
require 'swagger_client/models/ship_option'
require 'swagger_client/models/ship_price'
require 'swagger_client/models/ship_to_address'
require 'swagger_client/models/shipment'
require 'swagger_client/models/shipping_prices_request'
require 'swagger_client/models/shipping_prices_result'
require 'swagger_client/models/sku_quantity_pair'
require 'swagger_client/models/submitted_order'
require 'swagger_client/models/submitted_order_list'
require 'swagger_client/models/user_info'
require 'swagger_client/models/validation_failure'

# APIs
require 'swagger_client/api/addressvalidation_api'
require 'swagger_client/api/countries_api'
require 'swagger_client/api/images_api'
require 'swagger_client/api/imagevalidation_api'
require 'swagger_client/api/languages_api'
require 'swagger_client/api/orders_api'
require 'swagger_client/api/ordersearch_api'
require 'swagger_client/api/orderstatus_api'
require 'swagger_client/api/paymentvalidation_api'
require 'swagger_client/api/preconfiguredproducts_api'
require 'swagger_client/api/priceestimate_api'
require 'swagger_client/api/productpreview_api'
require 'swagger_client/api/products_api'
require 'swagger_client/api/producttemplates_api'
require 'swagger_client/api/productvariants_api'
require 'swagger_client/api/shippingprices_api'
require 'swagger_client/api/shippriceestimate_api'
require 'swagger_client/api/userinfo_api'

module SwaggerClient
  class << self
    # Customize default settings for the SDK using block.
    #   SwaggerClient.configure do |config|
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
