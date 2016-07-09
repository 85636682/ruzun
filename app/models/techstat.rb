class Techstat < ActiveRecord::Base
  belongs_to :played
  belongs_to :user
end
