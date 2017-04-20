class SwimingLesson < ApplicationRecord
    enum status: [:pending, :checkouted, :completed, :canceled]
end
