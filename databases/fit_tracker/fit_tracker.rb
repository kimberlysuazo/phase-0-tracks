# The Fit Tracker INTRO
=begin
The Fit Tracker is a group-based calorie and weight tracker. It is for groups (family, friends, coworkers) that want to get 
healthy together with friendly competition. Good for time-line of at least 2 months. 

The fit tracker keeps track of calories burned and weight everyday you workout. 
It tells you how many pounds you've lost and how many calories you've burned over the past week, so far this month, 
and so far in the competition. 
If the users chooses to see rankings, it ranks the team for week, month, and competition thus far.  

for the purposes of this exercise, I created a fake group of 6 coworkers. Will use faker to create names.  
Calling the group of 6 coworkers the Wolves Pack.   

----- 

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
  current_weight = starting_weight
  db.execute("INSERT INTO members (name, starting_weight, current_weight) VALUES (?, ?, ?)", [name, starting_weight, current_weight])
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

# calculate member_id
def find_id(db, name)
  find_id = db.execute("SELECT id FROM members WHERE name='#{name}'")
  find_id[0]['id']
end 

# This method calculates the weight loss over the past week or over the course of this month. 
def weight_loss(db, member_id, time_frame)
  total_pounds= []
  t =  DateTime.now
  past_week = ((t-6)..t).map{ |date| date.strftime("%m-%d") }
  this_month = Time.now.strftime("%m") 
  if time_frame == "week"
    past_week.each do |x|
      updated_weight = db.execute("SELECT * FROM weight WHERE member_id='#{member_id}' AND day='#{x}' ")
      updated_weight.each do |pounds|
        total_pounds << pounds['current_weight']
      end 
    end
  else 
    updated_weight = db.execute("SELECT * FROM weight WHERE member_id='#{member_id}' AND month='#{this_month}' ")
    updated_weight.each do |pounds|
      total_pounds << pounds['current_weight']
    end 
  end   
  weight_loss= total_pounds.max - total_pounds.min 
end   

# calculate total weight loss thus far 
def total_weight_loss(db, member_id)  
  total_pounds= []
  today = Time.now.strftime("%m-%d") 
  weight = db.execute("SELECT * FROM members WHERE id='#{member_id}'") 
  updated_weight = db.execute("SELECT * FROM weight WHERE member_id='#{member_id}'")
  updated_weight.each do |pounds|
      total_pounds << pounds['current_weight']
    end 
  weight_loss = weight[0]['starting_weight'] - total_pounds.min 
end 

# calculate calories burned this month  
def calories_month(db, member_id)
  total_calories= []
  this_month = Time.now.strftime("%m") 
  calories_date= db.execute("SELECT * FROM calories WHERE member_id='#{member_id}' AND month='#{this_month}' ")
  calories_date.each do |cals|
    total_calories << cals['amt_burned']
  end 
  total_calories.inject(:+)
end 

# This method calculates the calories burned over the past week (last 7 days). 
def calories_week(db, member_id)
  total_calories= []
  t =  DateTime.now
  past_week = ((t-6)..t).map{ |date| date.strftime("%m-%d") }
  past_week.each do |x|
    calories_date= db.execute("SELECT * FROM calories WHERE member_id='#{member_id}' AND day='#{x}' ")
    calories_date.each do |cals|
      total_calories << cals['amt_burned']
      end 
  end 
  total_calories.inject(:+)
end 

# calculate calories burned thus far.
def calories_burned(db, member_id)
  total_calories= []
  calories_person = db.execute("SELECT * FROM calories WHERE member_id='#{member_id}' ")
  calories_person.each do |cals|
    total_calories << cals['amt_burned']
  end 
  total_calories.inject(:+)
end 

# gives a printed ranking (descending order) for the calories burned per group member, either for the past week, thus far this month, or total. 
def calories_ranking(db, time_frame)
  ranking= {}
  users = db.execute("SELECT * FROM members")
  users.each do |user|
    id =user['id']
    ranking[user['name']] = case time_frame 
      when "week" then calories_week(db, id)
      when "month" then calories_month(db, id)
      else calories_burned(db, id) 
    end   
  end
  new_ranking= ranking.sort_by {|name, calories| calories}.reverse.to_h
  new_ranking.each {|name, calories| puts "#{name}: #{calories} calories burned"}
end 

# gives a printed ranking (descending order) for the weight loss per group member, either for the past week, thus far this month, or total. 
def weight_ranking(db, time_frame)
  ranking= {}
  users = db.execute("SELECT * FROM members")
  users.each do |user|
    id =user['id']
    ranking[user['name']] = case time_frame 
      when "week" then weight_loss(db, id, 'week')
      when "month" then weight_loss(db, id, 'month')
      else total_weight_loss(db, id) 
    end   
  end
  new_ranking= ranking.sort_by {|name, pounds| pounds}.reverse.to_h
  new_ranking.each {|name, pounds| puts "#{name}: #{pounds} lbs lost"}
end 

# Data for fake entries------------------------------------------------------------------  
# today = Time.now.strftime("%m-%d") 
# # #create fake members
 #6.times {create_member(db, Faker::Name.name, rand(115..220))}

# create fake calories entry
 # enter_calories(db, '08-14', rand(200..1000), 1)
# enter_calories(db, '08-14', rand(200..1000), rand(1..6))
# enter_calories(db, '08-14', rand(200..1000), rand(1..6))
# enter_calories(db, '08-14', rand(200..1000), rand(1..6))
# enter_calories(db, '08-14', rand(200..1000), rand(1..6))
# enter_calories(db, '08-14', rand(200..1000), rand(1..6))
# enter_calories(db, '08-14', rand(200..1000), rand(1..6))
# enter_calories(db, '08-14', rand(200..1000), rand(1..6))

# update current weight for fake members
# enter_weight(db, today, 216, 1)
# enter_weight(db, today, 210, 2)
# enter_weight(db, today, 110, 3)
# enter_weight(db, today, 200, 4)
# enter_weight(db, today, 190, 5)
#db.execute("INSERT INTO weight (day, month, current_weight, member_id) VALUES ('07-30', '07', 181, 6)");
# enter_weight(db, '08-01', 180, 6)
# enter_weight(db, '08-08', 171, 6)
# enter_weight(db, '08-13', 165, 6)
# #enter_weight(db, today, 164, 6)


# USER INTERFACE --------------------------------------------------------------------------
=begin 
USER INTERFCE OUTLINE
-List group members
-Ask user whether he/she is in the team. 
  -If not, create new member. 
  -add error handling to ensure yes or no answer.
-Ask user for name, current weight and calories burned today. 
-add error handling so that if user says they are in group, they input name currently listed. 
-Print out results for user. 
-Ask user if he/she wants to see rankings
  -IF yes, 
    -show rankings. 
-say goodbye to user. 
=end 

day = Time.now.strftime("%m-%d") #date in mm-dd format
puts "Welcome! This is the fitness tracker for the Wolves Pack"
puts "Here are the current group members:"
members = db.execute("SELECT * FROM members")
members.each {|user| puts user['name']}

puts "\nAre you already part of the group? Please answer yes or no."
while true
  answer= gets.chomp.downcase
  if answer == "yes"
    puts "Please enter your name EXACTLY as it appears on the list."
    user_name= gets.chomp
    break 
  elsif answer == "no"
    puts "please enter your full name (First and Last) so you can join the wolf pack and track your way to healthy."  
    user_name= gets.chomp
    puts "Please enter your weight."
    weight = gets.chomp.to_i
    create_member(db, user_name, weight)
    member_id =find_id(db, user_name)
    enter_weight(db, day, weight, member_id)
    created_member = true 
    break
  else 
    puts "Please answer yes or no."  
  end 
end  

members = db.execute("SELECT * FROM members") #declare variable again to include newly created members for input error handling
while !members.to_s.include? user_name 
  puts "Oops... there doesnt seem to be a match with the name you entered. Are you sure you're part of the group? Yes or no."
  list_answer= gets.chomp.downcase
  if list_answer == "no"
    puts "please enter your full name (First and Last) so you can join the wolf pack and track your way to healthy."  
    user_name= gets.chomp
    puts "Please enter your weight."
    weight = gets.chomp.to_i
    create_member(db, user_name, weight)
    member_id =find_id(db, user_name)
    enter_weight(db, day, weight, member_id)
    created_member = true 
    break
  else 
    puts "Please enter your name EXACTLY as it appears on the list."
    user_name= gets.chomp
  end 
end   

member_id =find_id(db, user_name) #find the database member_id for current user. 


puts "Hi #{user_name}."
puts "Please enter the amount of calories you've burned today." 
amt_burned = gets.chomp.to_i
enter_calories(db, day, amt_burned, member_id)  

if !created_member
  puts "Please enter your current weight."
  current_weight= gets.chomp.to_i 
  enter_weight(db, day, current_weight, member_id)
end   


puts "Here are your results, #{user_name}." 
puts "In the last week, you've lost #{weight_loss(db, member_id, 'week')} lbs and burned #{calories_week(db, member_id)} calories."
puts "This month, you've lost #{weight_loss(db, member_id, 'month')} lbs and burned #{calories_month(db, member_id)} calories."
puts "Thus far you've lost #{total_weight_loss(db, member_id)} lbs, and have burned #{calories_burned(db, member_id)} calories."

puts "\nWould you like to see the current group rankings? Please answer yes or no."
see_ranking = gets.chomp.downcase

if see_ranking == "yes"
  puts "Here are the results for the Wolves Pack:" 
  puts "\n_______Group rankings for this week_______"
  puts "CALORIES================================"
  calories_ranking(db, "week")
  puts "WEIGHT LOSS ============================"
  weight_ranking(db, "week")
  puts "\n_______Group rankings for this month_______"
  puts "CALORIES================================"
  calories_ranking(db, "month")
  puts "WEIGHT LOSS ============================"
  weight_ranking(db, "month")
  puts "\n_______Group rankings entire competiton________"
  puts "CALORIES================================"
  calories_ranking(db, "total")
  puts "WEIGHT LOSS ============================"
  weight_ranking(db, "total")
end 
puts "Remember, regardless of the results, you're already winning by being on your way to a healthier you. 
Keep at it! Dont forget to check in tomorrow!"







