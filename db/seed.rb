require_relative("../models/students.rb")

student1 = Student.new({
  "first_name"  =>  "Harry",
  "last_name"   =>  "Potter",
  "house"       =>  "Gryffindor",
  "age"         =>  "14"
  })

  student1.save
