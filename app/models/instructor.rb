class Instructor < ActiveRecord::Base
    has_many :students
    has_many :classrooms, through: :students
    has_many :courses, through: :students
end