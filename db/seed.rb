require_relative("../models/students.rb")
require_relative("../models/house.rb")
require("pry")

house1 = House.new({
  "name" => "Gryffindor",
  "logo" => "https://i.pinimg.com/474x/d1/e8/53/d1e853a51cc4f6b25a9f96914e04b992--the-house-harry-potter-hogwarts.jpg"
  })

house2 = House.new({
  "name" => "Hufflepuff",
  "logo" => "https://i.pinimg.com/474x/a3/16/4c/a3164c86947c03ad05bab8cab5b78fc2--hufflepuff-pride-wall-banner.jpg"
  })

house3 = House.new({
  "name" => "Ravenclaw",
  "logo" => "https://i.pinimg.com/474x/cd/51/2a/cd512a34d5143ee29e96dbd2fcd28a45--knowledge-saga.jpg"
  })

house4 = House.new({
  "name" => "Slytherin",
  "logo" => "http://www.harrymedia.com/data/media/104/escudo_slytherin.jpg"
  })

house1.save()
house2.save()
house3.save()
house4.save()

student1 = Student.new({
  "first_name"  =>  "Harry",
  "last_name"   =>  "Potter",
  "house_id"    =>  house1.id,
  "age"         =>  "14"
  })

student2 = Student.new({
  "first_name"  =>  "Draco",
  "last_name"   =>  "Malfoy",
  "house_id"    =>  house4.id,
  "age"         =>  "14"
  })

student3 = Student.new({
  "first_name"  =>  "Luna",
  "last_name"   =>  "Lovegood",
  "house_id"    =>  house2.id,
  "age"         =>  "13"
  })

  student1.save
  student2.save
  student3.save



binding.pry
nil
