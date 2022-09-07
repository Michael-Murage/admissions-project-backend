class Classroom < ActiveRecord::Base
    has_many :courses, through: :students
    has_many :students
    has_many :instructors, through: :students
end