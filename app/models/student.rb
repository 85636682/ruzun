class Student < ApplicationRecord
    enum status: [:pending, :checkouted, :completed, :canceled]

    belongs_to :lesson
    belongs_to :user, optional: true
end
