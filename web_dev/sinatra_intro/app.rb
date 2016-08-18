# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end  

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# ==================================================================================================
# RELEASE 0

get '/great_job' do
  name = params[:name]
  if name 
    "Good job, #{name}!"
  else 
    "Good job!"
  end     
end 

#  Route that displays address 
get '/contact/:address' do 
  address = params[:address]
  "Our address is: #{address}"
end

# Route that adds two numbers 
get '/:num_1/math/:num_2' do
  num_1 = params[:num_1]
  num_2 = params[:num_2]
  math= num_2.to_i + num_1.to_i
  "#{params[:num_1]} + #{params[:num_2]}= #{math}"
end   


