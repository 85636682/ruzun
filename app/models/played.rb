class Played < ActiveRecord::Base
  belongs_to :game
  has_many :techstats
end
