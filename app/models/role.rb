class Role < ApplicationRecord
  RESERVED = %w(admin)

  has_many :permissions, dependent: :destroy
  has_many :admins

  validates :name, presence: true, uniqueness: true

  scope :editable, -> { where.not(name: RESERVED ) }
end
