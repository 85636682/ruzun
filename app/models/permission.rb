class Permission < ApplicationRecord
  belongs_to :role
  has_many :admins, through: :role

  validates :resource, presence: true
  validates :action, presence: true
end
