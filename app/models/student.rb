class Student < ActiveRecord::Base
    belongs_to :classroom
    belongs_to :course
    belongs_to :instructor
end