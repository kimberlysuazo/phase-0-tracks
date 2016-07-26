class Santa
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender 
    @ethnicity = ethnicity
    @age = 0 
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end 
  
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end 

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!" 
    cookie_type
  end   
end   

#Driver code to test instance methods 
noel = Santa.new
claus = Santa.new 

noel.speak
claus.eat_milk_and_cookies("Chocolate Chip")


=begin
  
Update your Santa class with the following attributes:

gender, which will be a string passed in on initialization
ethnicity, which will be a string passed in on initialization
reindeer_ranking, an array of reindeer from most preferred to least preferred. 
This is not passed in on initialization; 
it simply gets a default value of ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
age, which is not passed in on initialization and defaults to 0
  
=end