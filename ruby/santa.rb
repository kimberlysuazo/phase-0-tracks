class Santa
  def initialize
    puts "Initializing Santa instance ..."
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
