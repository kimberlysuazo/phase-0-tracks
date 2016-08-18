# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# RELEASE 1
# Lists all students in specific campus 
get '/campus/:campus' do 
  @city = params[:campus].upcase
  @campus= db.execute("SELECT * FROM students WHERE campus=?", [@city])
  if @campus.empty? 
    @city = "No such campus"
  end   
  erb :campus_search

end   

# RELEASE 2-- manipulate data. 
get '/update/age' do
  erb :age
end   

#Updates a student's age
post '/age' do 
  age= params['age'].to_i
  name= params['name']
  campus= params['campus'].upcase
  db.execute("UPDATE students SET age=? WHERE name=? AND campus=?", [age, name, campus] )
  redirect '/'
end   
