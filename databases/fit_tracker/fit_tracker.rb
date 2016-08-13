# The Fit Tracker INTRO
=begin
The Fit Tracker is a group-based calorie and weight tracker. It is for groups (family, friends, coworkers) that want to get 
healthy together with friendly competition for 3 months. 

The fit tracker keeps track of calories burned and weight everyday you workout. 
It tells you how many pounds you've lost and how many calories you've burned so far this week, and so far in the competition. 
It also ranks the team and declares a winner for week, month and thus far. 


for the purposes of this exercise, we are doing group of 13 coworkers. Will use faker to create names.  
Calling the group of 13 coworkers the Wolves Pack.   

----- 
OUTLINE for user interface:  
  This is the fit tracker for Wolves Pack (group name). 
  members: names for all members. 

  Are you already part of the group? 
  IF Yes, 
    please enter your name. 
  IF No, 
    please enter your name so you can join the wolf pack and track your way to healthy. 



  Hi #{name}. Please enter amount of calories you've burned today. 
  execute command to insert into calories burned. 

  Please enter your weight. 
  execute command to UPDATE current weight. 

  Here are your results. Thus far this week, you've lost x lbs. and have burned x calories. 
  Thus far, you've lost x lbs. and have burned x calories. 

  Here are the results for the wolves pack. 
  ranking (sorted list) calories burned
  ranking (sorted list) weight loss 

  Declare winners!:
  Winner for the week for calories  and weight 
  winner for the month for calories  and weight 
  winner thus far for calories  and weight 

  Awesome! Remember, regardless of the results, you're already winning by being on your way to a healthier you. 
  Keep at it! Dont forget to check in tomorrow!
=end 

require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("fit_info.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS members(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    starting_weight INT, 
    current_weight INT
  )
SQL

create_table2 = <<-SQL
  CREATE TABLE IF NOT EXISTS calories(
    id INTEGER PRIMARY KEY,
    date TEXT,
    amt_burned INT, 
    member_id INT,
    FOREIGN KEY (member_id) REFERENCES members(id)
  )
SQL


# create a members table (if it's not there already)
db.execute(create_table_cmd)

# create a calories table (if it's not there already)
db.execute(create_table2)


#today = Time.now.strftime("%m-%d")

#create members method
def create_member(db, name, starting_weight)  
  #starting_weight = rand(115..300)
  current_weight = starting_weight
  db.execute("INSERT INTO members (name, starting_weight, current_weight) VALUES (?, ?, ?)", [name, starting_weight, current_weight])
end

# #create test member
# create_member(db, Faker::Name.name, rand(115..300))
member_print = db.execute("SELECT * FROM members")
puts member_print

# create calorie entries for members 
def enter_calories(db, date, amt_burned, member_id)  
  db.execute("INSERT INTO calories (date, amt_burned, member_id) VALUES (?, ?, ?)", [date, amt_burned, member_id]) 
end

# create fake calories entry
# enter_calories(db, '08-12', rand(200..1000), rand(1..5))
# enter_calories(db, '08-08', rand(200..1000), rand(1..5))
