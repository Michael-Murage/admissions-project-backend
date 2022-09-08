# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 4) do

  create_table "classrooms", force: :cascade do |t|
    t.string "room_number"
    t.integer "area"
  end

  create_table "courses", force: :cascade do |t|
    t.string "course_name"
    t.string "course_period"
  end

  create_table "instructors", force: :cascade do |t|
    t.string "name"
    t.integer "employee_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "id_number"
    t.string "status"
    t.string "gender"
    t.integer "course_id"
    t.integer "classroom_id"
    t.integer "instructor_id"
    t.integer "admission_number"
  end

end
