class Santa
  def initialize(gender, ethnicity)
    @gender = gender 
    @ethnicity = ethnicity
    @age = 0 
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    puts "Initializing Santa instance that's #{@gender} and has #{@ethnicity} ethnicity."
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
noel = Santa.new("male", "mixed")
noel.speak
noel.eat_milk_and_cookies("Chocolate Chip")



#Diverse initializations  
santas = []
example_genders = ["agender", "female", "prefer not to say", "male", "gender fluid", "N/A", "bigender"]
example_ethnicities = ["black", "N/A", "white", "Asian", "prefer not to say", "mixed", "Latino", "black"]
example_genders.each_index do |i|
  if i.even? 
  santas << Santa.new(example_genders[i], example_ethnicities[i - 1])
  else 
  santas << Santa.new(example_genders[i], example_ethnicities[i + 1]) 
  end
end   

