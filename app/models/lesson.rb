class Lesson < ApplicationRecord
    has_many :students
    has_many :timelines
end
