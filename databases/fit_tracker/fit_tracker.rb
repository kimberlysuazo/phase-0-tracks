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

# TABLES

# members 
# id, 
# name,
# starting weight, 
# current weight

# calories burned 
# id, 
# date, 
# amt burned, 
# member_id foreign key 

require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("fit_info.db")
db.results_as_hash = true


 

