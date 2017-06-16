class Lesson < ApplicationRecord
    has_many :students
    has_many :daylines
    has_many :timelines
end
