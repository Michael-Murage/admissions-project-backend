class CreateStudentTable < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string(:name)
      t.string(:age)
      t.string(:id_number)
      t.string(:status)
      t.string(:gender)
      t.string(:course)
      t.string(:admission_number)
      t.string(:)
    end
  end
end
