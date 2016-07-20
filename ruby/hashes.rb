=begin
  
write a program that will allow an interior designer to enter the details of a given client:
the client's name, age, number of children, decor theme, 
and so on (you can choose your own as long as it's a good mix of string, integer, and boolean data). 


Prompt the designer/user for all of this information.
Convert any user input to the appropriate data type.
Print the hash back out to the screen when the designer has answered all of the questions.
Give the user the opportunity to update a key (no need to loop, once is fine). 
After all, sometimes users make mistakes! If the designer says "none", skip it. 
But if the designer enters "decor_theme" (for example), 
your program should ask for a new value and update the :decor_theme key. 
(Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) 
You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
Print the latest version of the hash, and exit the program.
pseudocode

=end 

puts "Question 1: What is your full name?"
full_name = gets.chomp

puts "Question 2: How old are you?"
age_answer = gets.chomp.to_i

puts "Question 3: How many children do you have?"
children_answer = gets.chomp.to_i

puts "Question 4: Is your living space 'open-concept' (i.e., the living room, dining and kitchen areas are not enclosed by walls)? Please answer \"yes\" or \"no\"."
apt_style = gets.chomp.downcase
has_open_concept = false
if apt_style == "yes"
  has_open_concept = true
end   

puts "Question 5: What is your preferred decor theme?"
theme_answer = gets.chomp

client_form = {
  name: full_name,
  age: age_answer,
  children_amount: children_answer,
  open_concept: has_open_concept,
  decor_theme: theme_answer
}

p client_form

puts "Would you like to update any of the answers? Please answer \"yes\" or \"no\"."
update = gets.chomp

if update == "yes"
  puts "Please enter the number of the question you'd like to update (1 - 5)."
  question_number = gets.chomp.to_i
  puts "Please enter the corrected answer."
  corrected_answer = gets.chomp
end

question_update = {:name => 1, :age => 2, :children_amount => 3, :open_concept => 4, :decor_theme => 5}


client_form[question_update.key(question_number)] = corrected_answer

p client_form


ask_question(question_number)

def ask_question(n)
case 
  when n == 1
    puts "Question 1: What is your full name?"
    $full_name = gets.chomp
  when n == 2
    puts "Question 2: How old are you?"
    $age_answer = gets.chomp.to_i
  when n == 3
    puts "Question 3: How many children do you have?"
    $children_answer = gets.chomp.to_i
  when n == 4
    puts "Question 4: Is your living space 'open-concept' (i.e., the living room, dining and kitchen areas are not enclosed by walls)? Please answer \"yes\" or \"no\"."
    apt_style = gets.chomp.downcase
    $has_open_concept = false
      if apt_style == "yes"
        $has_open_concept = true
      end   
  else n == 5
    puts "Question 5: What is your preferred decor theme?"
    $theme_answer = gets.chomp     
  end 
end 

ask_question(1)
ask_question(2)
ask_question(3)
ask_question(4)
ask_question(5)


