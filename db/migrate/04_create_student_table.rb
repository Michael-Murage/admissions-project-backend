class CreateStudentTable < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string(:name)
      t.integer(:age)
      t.integer(:id_number)
      t.string(:status)
      t.string(:gender)
      t.integer(:course_id)
      t.integer(:classroom_id)
      t.integer(:instructor_id)
      t.integer(:admission_number)
    end
  end
end
