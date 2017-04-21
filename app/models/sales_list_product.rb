class SalesListProduct < ApplicationRecord
    belongs_to :product
    belongs_to :sales_list
end
