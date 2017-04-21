class SalesList < ApplicationRecord
    has_many :sales_list_products

    def total_price
        total_price = 0
        self.sales_list_products.each do |sales_list_product|
            total_price += sales_list_product.product.price
        end
        total_price
    end
end
