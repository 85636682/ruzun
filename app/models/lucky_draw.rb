class LuckyDraw < ApplicationRecord
    belongs_to :user
    belongs_to :award, optional: true
end
