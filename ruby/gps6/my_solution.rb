# Virus Predictor

# I worked on this challenge [by myself, with: Keri Gannon].
# We spent 2 hours on this challenge.

# EXPLANATION OF require_relative
#require_relative is a way to load code into your file. It's a more convenient form of 'require'. 
  #It's used with the relative path of the class file that you're pulling into your file. 
#require on the other hand uses an absolute path to the class file you're pulling.  
require_relative 'state_data'

class VirusPredictor
#The initialize method will give each instance of that class the corresponding state, population and population density attribute information.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#The virus_effects method calls the predicted_deaths and the speed_of_spread methods defined below and prints the statement.   
  def virus_effects
     print "#{@state} will lose #{predicted_deaths} people in this outbreak 
     and the outbreak will spread across the state in #{speed_of_spread} months. \n\n"
  end

  private

#The predicted_deaths method takes into account the population density of each state, and depending on its amount, calculates a specific number 
#of deaths predicted for that state. The output is the predicted number of deaths in the state for this outbreak.  
  def predicted_deaths
    # predicted deaths is solely based on population density
    # as population density increases, it affects the percent of the population that will die. The higher the population density, the higher number of deaths. 
    y = case @population_density
      when (0..49) then 0.05
      when (50..99) then 0.1
      when (100..149) then 0.2  
      when (150..199) then 0.3
      else 0.4
      end 
    (@population * y).floor
  end 
#The speed_of_spread method also takes into account the population density and depending on that figure, assigns a speed at which the outbreak 
#will spread across the state. Its output is the months it will take to spread across the state. The higher the population density, the quicker it will spread. 
  def speed_of_spread #in months
    speed = case @population_density
      when (0..49) then 2.5
      when (50..99) then 2 
      when (100..149) then 1.5 
      when (150..199) then 1
      else 0.5
      end
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state, state_info|
  new_instance = VirusPredictor.new(state, state_info[:population_density], state_info[:population])
  new_instance.virus_effects
end

#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
  One declares the key in and uses a hash rocket => to declare its value like so, "key" => value. 
  The other method declares the key using a symbol, but when declaring it, the colon goes after the symbol, 
  like so, key: value. 

What does require_relative do? How is it different from require?
  require_relative is a way to load pre-existing code into your file. It's a more convenient form of 'require'. 
  It's used with the relative path of the class file that you're pulling into your file. require on the other hand 
  uses an absolute path to the class file you're pulling. 

What are some ways to iterate through a hash?
  You can iterate through a hash using #each, #each_pair, #each_key, #each_value, #select, #delete,  

When refactoring virus_effects, what stood out to you about the variables, if anything?
  What stood out was that the parameters were very repetitive and the variables were present in each of the methods 
  and also outside of the methods. 

What concept did you most solidify in this challenge?
  This challenge was very helpful in thinking about instance variables declared in a class and their scope. 
  Furthermore, it clarified the concept of require_relative vs require, and this challenge gave the me opportunity to understand 
  the different types of variables other than local, instance, and global. I wasnt familiar with Constant variables.
  Finally, my pair re-introduced me to case statements, particularly the possibility of declaring a new variable with the case statement,
  which is very handy for refactoring. 
=end 



