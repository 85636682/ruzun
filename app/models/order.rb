class Order < ApplicationRecord
    enum status: [:pending, :processing, :done]

    belongs_to :orderable, polymorphic: true
end
