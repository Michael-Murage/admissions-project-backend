class Course < ActiveRecord::Base
    has_many :classrooms, through: :students
    has_many :students
    has_many :instructors, through: :students
end