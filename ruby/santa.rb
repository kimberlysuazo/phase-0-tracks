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

  #getter methods 
  def age 
    @age 
  end   

  def ethnicity 
    @ethnicity
  end 

  def gender 
    @gender 
  end   
  
  #setter methods 
  def celebrate_birthday
    @age = @age + 1 
  end 
  
  def gender=(new_gender) 
    @gender = new_gender 
  end 
  
  def get_mad_at(reindeer)
    puts "The previous ranking was: #{@reindeer_ranking}"
    #puts "#{reindeer}'s ranking is #{(@reindeer_ranking.find_index(reindeer) + 1)}"
    index = @reindeer_ranking.find_index(reindeer)
    @reindeer_ranking[index] = ' '
    @reindeer_ranking.insert(-1, reindeer)
    @reindeer_ranking.delete_if { |ranking| ranking == ' ' } 
    puts "The new ranking is: #{@reindeer_ranking}"
  end   

=begin
celebrate_birthday should age Santa by one year.
get_mad_at can take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings. Vixen knows what he did.
The @gender attribute should have a setter method that allows @gender to be reassigned from outside the class definition.
=end 

end   

#Driver code to test instance methods 
noel = Santa.new("male", "mixed")
noel.speak
noel.eat_milk_and_cookies("Chocolate Chip")
noel.get_mad_at("Dancer")
p noel.age
noel.celebrate_birthday
p noel.gender 
noel.gender = "agender"
puts "new gender is: #{noel.gender}"
puts "new age is: #{noel.age}" 




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

