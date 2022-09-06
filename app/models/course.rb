class Course < ActiveRecord::Base
    belongs_to :classroom
    has_many :students
    has_many :instructors, through: :students
end