class CreateCourseTable < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string(:course_name)
      t.string(:course_period)
    end
  end
end
