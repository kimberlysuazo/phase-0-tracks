#PSEUDOCODE
=begin
-Ask user their full name.
  -Store answer in full_name variable.
-Ask user their age.
  -Store answer in age_answer variable.
-Ask user how many children they have. 
  -Store answer in children_answer variable.     
-Ask user if their living space is "open-concept".
  -Store answer in open_concept_answer variable. 
-Ask user what their preferred decor theme is. 
  -Store answer in theme_answer variable  
-Ask user what their favorite 3 colors are. 
  -Initialize array. 
  -Run loop 3 times and push answers into array.  
-Initialize client_form hash:
  -For name key, use full_name as value. 
  -For age key, use age_answer as value.
  -For children_amount key, use children_answer as value.
  -For open_concept key, use open_concept_answer as value.
  -For decor_theme key, use theme_answer as value. 
-Print client_form hash in a readable list. 
-Ask user if they'd like to make any corrections to answers. 
  -If yes, ask them to enter the question they'd like to answer. 
      -Store that answer in questions_update variable. Use use .intern method to turn that into a symbol.
    -If answer to update is colors, 
      -iInitialize empty corrected_answer array to store answers
      -Run loop 3 times and push to array to get 3 favorite colors. 
    -If answer is not colors, 
      -Ask user to input the correct answer. 
      -Store that answer in corrected_answer variable. 
    -Update hash value by using questions_update and corrected_answer. 
-Print client_form hash in a readable list. 
=end 

puts "What is your full name?"
full_name = gets.chomp

puts "How old are you?"
age_answer = gets.chomp

puts "How many children do you have?"
children_answer = gets.chomp

puts "Is your living space 'open-concept' (i.e., the living room, dining and kitchen areas are not enclosed by walls)? Please answer \"yes\" or \"no\"."
open_concept_answer = gets.chomp

puts "What is your preferred decor theme?"
theme_answer = gets.chomp

puts "What are your top 3 favorite colors? Please select ENTER after each color."
favorite_colors = []
while favorite_colors.count < 3
    color = gets.chomp
    favorite_colors.push color
end  

client_form = {
  name: full_name,
  age: age_answer,
  children_amount: children_answer,
  open_concept: open_concept_answer,
  decor_theme: theme_answer,
  colors: favorite_colors 
}

puts "Please review the information we have thus far:"
client_form.each {|x,y| puts "#{x}: #{y}"}

puts "Would you like to update any of the answers? Please answer \"yes\" or \"no\"."
update = gets.chomp.downcase

if update == "yes"
  puts "Please enter the question you'd like to update. Answer either \"name\", \"age\", \"children_amount\", 
  \"open_concept\", \"decor_theme\", \"colors\"."
  question_update = gets.chomp.intern
  if question_update == :colors 
    puts "Please enter your top 3 favorite colors."
    corrected_answer = Array.new 
      while corrected_answer.count < 3
      color = gets.chomp
      corrected_answer.push color
      end  
  else 
    puts "Please enter the corrected answer."
    corrected_answer = gets.chomp
  end
  client_form[question_update] = corrected_answer
end

puts "The final client info:"
client_form.each {|x,y| puts "#{x}: #{y}"}





