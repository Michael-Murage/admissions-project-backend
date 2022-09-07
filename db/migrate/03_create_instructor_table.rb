class CreateInstructorTable < ActiveRecord::Migration[6.1]
  def change
    create_table :instructors do |t|
      t.string(:name)
      t.integer(:id_number)
      t.string(:gender)
      t.integer(:course_id)
    end
  end
end
