#Declare Shout Module-- NOT mixin
=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!!" + " :D"
  end
end

#Driver code test module methods 
puts "Guy finds his car has been scratched at the parking lot. This is his reaction: #{Shout.yell_angrily("NO")}"
puts "Guy finds $20 at the parking lot. This is his reaction: #{Shout.yell_happily("woo hoo")}"
=end 


#Declare Shout Module-- Mixin version 
module Shout
  def yell_angrily(words)
    words + "!!!" + " -_-"
  end

  def yell_happily(words)
    words + "!!" + " :D"
  end
end

class Teacher  
  include Shout 
end 

class Parent
  include Shout 
end   

#Driver code
dad = Parent.new 
swim_teacher = Teacher.new

puts "Teenager comes in through the window. Dad is waiting and says, #{dad.yell_angrily("Curfew was two hours ago")}"
puts "Dad gets off the phone and says, #{dad.yell_happily("Grandparents are taking the kids the whole week")}"
puts "Swim teacher blows whistle and says, #{swim_teacher.yell_angrily("No running by the pool")}"
puts "Swim teacher stops watch and yells, #{swim_teacher.yell_happily("You shaved 2 seconds from your previous record")}"



