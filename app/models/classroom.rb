class Classroom < ActiveRecord::Base
    belongs_to :course
    has_many :students
    has_many :instructors, through: :students
end