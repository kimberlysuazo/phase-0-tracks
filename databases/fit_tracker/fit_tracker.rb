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
    starting_weight INT
  )
SQL

create_table2 = <<-SQL
  CREATE TABLE IF NOT EXISTS calories(
    id INTEGER PRIMARY KEY,
    day TEXT,
    month TEXT,
    amt_burned INT, 
    member_id INT,
    FOREIGN KEY (member_id) REFERENCES members(id)
  )
SQL

create_table3 = <<-SQL
  CREATE TABLE IF NOT EXISTS weight(
    id INTEGER PRIMARY KEY,
    day TEXT,
    month TEXT,
    current_weight INT,
    member_id INT,
    FOREIGN KEY (member_id) REFERENCES members(id)
  )
SQL


# create a members table (if it's not there already)
db.execute(create_table_cmd)

# create a calories table (if it's not there already)
db.execute(create_table2)

#create a weight table to keep track of weight over time 
db.execute(create_table3)

# method that creates members
def create_member(db, name, starting_weight)  
  db.execute("INSERT INTO members (name, starting_weight) VALUES (?, ?)", [name, starting_weight])
end

# method that creates calorie entries for members 
def enter_calories(db, day, amt_burned, member_id)  
  month = Time.now.strftime("%m") 
  db.execute("INSERT INTO calories (day, month, amt_burned, member_id) VALUES (?, ?, ?, ?)", [day, month, amt_burned, member_id]) 
end

# method that creates entries for weight 
def enter_weight(db, day, current_weight, member_id)
  month = Time.now.strftime("%m") 
  db.execute("INSERT INTO weight (day, month, current_weight, member_id) VALUES (?, ?, ?, ?)", [day, month, current_weight, member_id])
end   

# #create test member
# 6.times {create_member(db, Faker::Name.name, rand(115..300))}
# member_print = db.execute("SELECT * FROM members")
# puts member_print

# create fake calories entry
# enter_calories(db, '08-12', rand(200..1000), rand(1..6))
# enter_calories(db, '08-08', rand(200..1000), rand(1..6))
# enter_calories(db, '08-10', rand(200..1000), rand(1..6))
# enter_calories(db, '08-06', rand(200..1000), rand(1..6))
# enter_calories(db, '08-01', rand(200..1000), rand(1..6))
# enter_calories(db, '08-02', rand(200..1000), rand(1..6))
# enter_calories(db, '08-03', rand(200..1000), rand(1..6))
# enter_calories(db, '08-09', rand(200..1000), rand(1..6))

today = Time.now.strftime("%m-%d") #date in mm-dd format
test_name= "Emily Kris"

#calculate member_id
find_id= db.execute("SELECT id FROM members WHERE name='#{test_name}'")
person_id = find_id[0]['id']

#update current weight for test member
#enter_weight(db, today, 238, person_id)

        ## weight_update= gets.chomp.to_i







