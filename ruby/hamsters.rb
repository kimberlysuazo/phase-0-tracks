puts "What is the hamster's name?"
hamster_name = gets.chomp

puts "What is your hamster's volume level (from 1 to 10)?"
volume_level = gets.chomp.to_i

puts "What is your hamster's fur color?"
fur_color = gets.chomp

puts "Is your hamster a good candidate for adoption (y/n)?"
adoption_cadidate = gets.chomp

if adoption_cadidate == "y"
  adoption_cadidate = true
else 
  adoption_cadidate = false
end   


puts "What is your hamster's estimated age?"
age = gets.chomp.to_f

if age == ""
  age = nil 
end 
  
