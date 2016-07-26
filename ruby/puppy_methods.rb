class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times {puts "Woof!"}
  end 

   def roll_over
    puts "*rolls over*"
  end   

  def dog_years(age)
    age * 7
  end 

  def bury(item)
    puts "I just buried the #{item} in the backyard!"
    item
  end   

  def initialize 
    p "Initializing new puppy instance ..."
  end   
   
end

#DRIVER CODE

felix = Puppy.new 
spot = Puppy.new
toy = "ball"

felix.fetch(toy) 
felix.speak(1)

p felix.dog_years(3)
felix.bury("bone")

#TESTING FOR RELEASE 2 W/ PUPPY CLASS 

bob = Puppy.new
bob.roll_over
puppy_array = []


5.times do |x| 
  new_puppy = (x = Puppy.new)
  puppy_array << new_puppy 
end   

p puppy_array

count = 0 
puppy_array.each do |y|
  y.roll_over
  y.bury("bone #{count}")
  count += 1
end 
