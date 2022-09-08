puts "🌱 Seeding in progress, please wait...."
areas = %w!400 800 1000!
room_no = 1..5

courses = ['Software Engineering', 'Devops', 'Cloud programming', 'Web Development', 'Data Science']
periods = %w!20 5 12 40!

instruct = %w!Stella Howard Tripple_K Rose Abzed Wilson Silas Lorenah Victor Edgar!

statuses = %w!active active active active active inactive!
genders = %w!Male Female!

for i in room_no do
  Classroom.create(
    room_number: i,
    area: areas[rand(0...areas.size)]
  )
end

for i in instruct do
  Instructor.create(
    name: i,
    employee_id: rand(0000..2000)
  )
end

50.times do
  Student.create(
    name: Faker::Name.name,
    age: rand(20..40),
    id_number: rand(000000...300000),
    status: statuses[rand(0...statuses.size)],
    gender: genders[rand(0...genders.size)],
    course_id: rand(1..courses.size),
    classroom_id: rand(1..Classroom.all.size),
    instructor_id: rand(1..Instructor.all.size),
    admission_number: rand(000000...200000)
  )
end

for i in courses
  Course.create(
    course_name: i,
    course_period: periods[rand(0...periods.size)]
  )
end

puts "🌱 Done seeding!!!"