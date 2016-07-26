#Declare Santa class and instance methods
class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age 

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
  
  def celebrate_birthday #adds one year to age. 
    @age = @age + 1 
  end 
  
  def get_mad_at(reindeer) #Deletes reindeer from the rankings array. Then moves him to last spot.   
    puts "The previous reindeer ranking was: #{@reindeer_ranking}"
    @reindeer_ranking.delete(reindeer) 
    @reindeer_ranking << reindeer
    puts "The new ranking is: #{@reindeer_ranking}"
    @reindeer_ranking
  end   
end   

#Driver code to test instance methods ---------------------------------------------------------------
noel = Santa.new("male", "mixed")
noel.speak
noel.eat_milk_and_cookies("Chocolate Chip")
noel.get_mad_at("Dasher")
puts "Santa's age was: #{noel.age}"
noel.celebrate_birthday
puts "Santa's now #{noel.age} years old." 
noel.age = 56
puts "Santa's now #{noel.age} years old." 
puts "Santa's gender was #{noel.gender}"
noel.gender = "agender"
puts "Santa's new gender is: #{noel.gender}"


#Santa Creator --------------------------------------------------------------------------------------
example_ethnicities = ['Amerindian and Alaska native', 'Native Hawaiian', 
  'Other Pacific islander', 'Superhero', 'Mythical Creature', 'Disney Princess', 
  'Mexican', 'Cuban', 'Puerto Rican', 'Latino/ Hispanic American', 'N/A', 
  'Dominican', 'German', 'Irish', 'African', 'White American', 'Black or African American', 
  'mixed' 'Italian', 'Polish', 'French', 'American Indian', 'Chinese', 
  'Dutch', 'Scottish', 'English', 'Thai', 'Japanese', 'Indonesian', 
  'Australian', 'prefer not to say']

example_genders = ['Agender', 'Androgynous', 'Bigender',
  'Cisgender', 'Female','Male', 'Gender Fluid',
  'Gender Nonconforming', 'Gender Questioning', 'Genderqueer',
  'Intersex', 'Neither', 'Neutrois', 'Non-binary',
  'Other', 'Pangender', 'Transgender', 'Transsexual', 
  'Prefer Not to Answer gender']

#Will make 1000 new Santas that are of random gender, ethniticy and age. 
santa_count = 0
while santa_count < 1000  
  santa= Santa.new(example_genders.sample, example_ethnicities.sample)
  santa.age = rand(0..140)
  puts "This Santa is #{santa.age} years old." 
  santa_count += 1 
end   


