require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( './models/students.rb' )
also_reload( './models/*' )

get("/students") do
  @students = Student.all
  erb(:index)
end

get("/students/new") do
  @houses = House.all
  erb(:new)
end

get("/students/:id") do
  @id = params[:id].to_i
  @student = Student.find(@id)
  erb(:show)
end

post("/students") do
  @student = Student.new(params)
  @student.save
  redirect to "/students"
end
