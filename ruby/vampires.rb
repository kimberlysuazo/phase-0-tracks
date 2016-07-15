puts "How many applications will you be filing?"
employees_to_process = gets.chomp.to_i

#This while loop will repeat program until all employees have been processed. 
while employees_to_process > 0 

#VAMPIRE DETECTION QUESTIONS 
  puts "What's the applicant's name?"
  applicant_name = gets.chomp.downcase
  
  #Set Boolean to inspect whether the name entered matches Tu Fang or Drake Cula. 
  #Set new name variable for use in detection logic.  
  name = true
  
  if applicant_name == "drake cula" || applicant_name == "tu fang"
    name = false
  end

  puts "How old are you?"
  age_given = gets.chomp.to_i

  puts "What year were you born?"
  birth_year = gets.chomp.to_i

  current_year = Time.new.year
  
  #Set new correct_age variable for use in detection logic.
  actual_age = current_year - birth_year
  correct_age = true
  
  if actual_age != age_given
    correct_age = false
  end

  puts "Our cafeteria serves garlic bread. Should we order some for you (y/n)?"
  #Use this while loop to ensure user inputs a valid answer.     

  while true 
    wants_garlic_bread = gets.chomp

    if wants_garlic_bread == "y"
      garlic_bread = true #Set new variable for use in detection logic. 
      break
    elsif wants_garlic_bread == "n"
      garlic_bread = false
      break
    else
      puts "Please answer with a \"y\" or a \"n\"."
    end   
  end

  puts "Would you like to enroll in the company's health insurance (y/n)?"
  #Use this while loop to ensure user inputs a valid answer.      

  while true 
    wants_health_insurance = gets.chomp

    if wants_health_insurance == "y"
      health_insurance = true #Set new variable for use in detection logic. 
      break
    elsif wants_health_insurance == "n"
      health_insurance = false
      break
    else
      puts "Please answer with a \"y\" or a \"n\"."
    end   
  end 

  puts "Please enter any allergies you may have. Type the name of the allergy followed by ENTER until finished inputting allergies. When finished, type \"done\"."
  #Store answers in empty array. Use while loop to continue to store answers until "done". 
  allergy_array = []
  allergy = gets.chomp.downcase
  while allergy != "done"
    allergy = gets.chomp
    allergy_array.push allergy
  end  

  #VAMPIRE DETECTION LOGIC BEGINS           
  case
    when !name
      puts "Definitely a vampire."
    when !correct_age && (!garlic_bread && !health_insurance)
      puts "Almost certainly a vampire."    
    when allergy_array.include?("sunshine")
      puts "Sunshine allergy- Probably a vampire."
    when correct_age && (garlic_bread || health_insurance)
      puts "Probably not a vampire."
    when !correct_age && (!garlic_bread || !health_insurance) 
      puts "Probably a vampire, even though doesn't have a sunshine allergy"
    else
      puts "Results inconclusive"
  end
          
  employees_to_process -= 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."





