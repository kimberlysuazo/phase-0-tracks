puts "What is the hamster's name?"
hamster_name = gets.chomp

puts "What is your hamster's volume level (from 1 to 10)?"
volume_level = gets.chomp

puts "What is your hamster's fur color?"
fur_color = gets.chomp

puts "Is your hamster a good candidate for adoption?"
adoption_cadidate = gets.chomp

puts "What is your hamster's estimated age?"
age = gets.chomp

if age == ""
  age = nil 
end 
  
