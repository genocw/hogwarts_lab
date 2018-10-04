require_relative("../models/students.rb")
require("pry")

student1 = Student.new({
  "first_name"  =>  "Harry",
  "last_name"   =>  "Potter",
  "house"       =>  "Gryffindor",
  "age"         =>  "14"
  })

student2 = Student.new({
  "first_name"  =>  "Draco",
  "last_name"   =>  "Malfoy",
  "house"       =>  "Slytherin",
  "age"         =>  "14"
  })

student3 = Student.new({
  "first_name"  =>  "Luna",
  "last_name"   =>  "Lovegood",
  "house"       =>  "Ravenclaw",
  "age"         =>  "13"
  })

  student1.save
  student2.save
  student3.save

# binding.pry
# nil
