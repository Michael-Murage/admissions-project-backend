class CreateClassroomTable < ActiveRecord::Migration[6.1]
  def change
    create_table :classrooms do |t|
      t.string(:room_number)
      t.integer(:area)
    end
  end
end
