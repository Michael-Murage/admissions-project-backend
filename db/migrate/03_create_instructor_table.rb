class CreateInstructorTable < ActiveRecord::Migration[6.1]
  def change
    create_table :instructors do |t|
      t.string(:name)
      t.integer(:employee_id)
    end
  end
end
