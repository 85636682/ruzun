class Techstat < ActiveRecord::Base
  belongs_to :played
  belongs_to :user
  delegate   :game, to: :played
end
