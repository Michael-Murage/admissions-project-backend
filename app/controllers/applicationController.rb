# This is where requests will be processed

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # courses table
  get '/courses' do
    course = Course.all.order(:name)
    course.to_json
  end

  get '/courses/:id' do
    course = Course.find(params[:id])
    course.to_json
  end

  post '/courses' do
    course = Course.create(
      course_name: params[:course_name],
      course_period: params[:course_period],
      instructor_id: params[:instructor_id]
    )
    course.to_json
  end

  patch '/courses/:id' do
    patched = Course.find(params[:id])
    patched.update(
      course_name: params[:course_name],
      course_period: params[:course_period],
      instructor_id: params[:instructor_id]
    )
    patched.to_json
  end

  put '/courses' do
    patched = Course.find(params[:id])
    patched.update(
      course_name: params[:course_name],
      course_period: params[:course_period],
      instructor_id: params[:instructor_id]
    )
    patched.to_json
  end

  delete '/courses/:id' do
    deleted = Course.find(params[:id])
    deleted.destroy
    deleted.to_json
  end

  # classrooms table

  get '/classrooms' do
    classroom = Classroom.all.order(:room_number)
    classroom.to_json
  end

  get '/classrooms/:id' do
    classroom = Classroom.find(params[:id])
    classroom.to_json
  end

  post '/classrooms' do
    classroom = Classroom.create(
      room_number: params[:room_number],
      area: params[:area]
    )
    classroom.to_json
  end

  patch '/classrooms/:id' do
    patched = Classroom.find(params[:id])
    patched.update(
      room_number: params[:room_number],
      area: params[:area]
    )
    patched.to_json
  end

  put '/classrooms' do
    patched = Classroom.find(params[:id])
    patched.update(
      room_number: params[:room_number],
      area: params[:area]
    )
    patched.to_json
  end

  delete '/classrooms/:id' do
    deleted = Classroom.find(params[:id])
    deleted.destroy
    deleted.to_json
  end

  # instructors table
  get '/instructors' do
    instruct = Instructor.all.order(:name)
    instruct.to_json
  end

  get '/instructors/:id' do
    instructor = Instructor.find(params[:id])
    instructor.to_json
  end

  post '/instructors' do
    pat = Instructor.create(
      name: params[:name],
      id_number: params[:id_number],
      gender: params[:gender],
      course_id: params[:course_id]
    )
    pat.to_json
  end

  patch '/instructors/:id' do
    patched = Instructor.find(params[:id])
    patched.update(
      name: params[:name],
      id_number: params[:id_number],
      gender: params[:gender],
      course_id: params[:course_id]
    )
    patched.to_json
  end

  put '/instructors' do
    patched = Instructor.find(params[:id])
    patched.update(
      name: params[:name],
      id_number: params[:id_number],
      gender: params[:gender],
      course_id: params[:course_id]
    )
    patched.to_json
  end

  delete '/instructors/:id' do
    deleted = Instructor.find(params[:id])
    deleted.destroy
    deleted.to_json
  end

    # students table
    get '/students' do
      student = Student.all.order(:name)
      student.to_json
    end
  
    get '/students/:id' do
      student = Student.find(params[:id])
      student.to_json
    end
  
    post '/students' do
      pat = Student.create(
        name: params[:name],
        age: params[:age],
        id_number: params[:id_number],
        status: params[:status],
        gender: params[:gender],
        course_id: params[:course_id],
        classroom_id: params[:classroom_id],
        instructor_id: params[:instructor_id],
        admission_number: params[:admission_number]
      )
      pat.to_json
    end
  
    patch '/students/:id' do
      patched = Student.find(params[:id])
      patched.update(
        name: params[:name],
        age: params[:age],
        id_number: params[:id_number],
        status: params[:status],
        gender: params[:gender],
        course_id: params[:course_id],
        classroom_id: params[:classroom_id],
        instructor_id: params[:instructor_id],
        admission_number: params[:admission_number]
      )
      patched.to_json
    end
  
    put '/students' do
      patched = Student.find(params[:id])
      patched.update(
        name: params[:name],
        age: params[:age],
        id_number: params[:id_number],
        status: params[:status],
        gender: params[:gender],
        course_id: params[:course_id],
        classroom_id: params[:classroom_id],
        instructor_id: params[:instructor_id],
        admission_number: params[:admission_number]
      )
      patched.to_json
    end
  
    delete '/students/:id' do
      deleted = Student.find(params[:id])
      deleted.destroy
      deleted.to_json
    end
    
    #extra routes
    get '/rand' do
      random = rand(000000...240322)
      {random: random}.to_json
    end

    post '/userdata' do
      {username: params[:username], pass: params[:password]}.to_json
    end

end
