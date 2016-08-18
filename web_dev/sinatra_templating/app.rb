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

get '/campus/:campus' do 
  @city = params[:campus].upcase
  @campus= db.execute("SELECT * FROM students WHERE campus=?", [@city])
  if @campus.empty? 
    @city = "No such campus"
  end   
  erb :campus_search

end   

#EXPERIMENTING WITH UPDATING DATABASE ENTRY
# get '/edit' do
#   erb :age
# end   

# post '/students' do 
#   p params
#   @age= db.execute ("SELECT * FROM students WHERE name=?", [params['name']])
#   # db.execute("UPDATE students SET age=? WHERE name=? AND campus=?", [params['name'], params['campus'], [params['age'].to_i])
#   erb :age
# end   

# add static resources