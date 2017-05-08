class Admin < ApplicationRecord
  has_secure_password

  belongs_to :role, optional: true
  has_many :permissions, through: :role
end
