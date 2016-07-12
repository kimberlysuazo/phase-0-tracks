

application_number = 0
puts "How many employees will you be processing?"
employees_to_process = gets.chomp.to_i


until application_number == employees_to_process

    current_year = 2016

    puts "What is your name?"
    name = gets.chomp
        if name == "Drake Cula"
          name = false
        elsif name == "Tu Fang"
          name = false
        else 
          name = true
        end   
      

    puts "How old are you?"
    age_given = gets.chomp.to_i

    puts "What year were you born?"
    birth_year = gets.chomp.to_i

    actual_age = current_year - birth_year
        if actual_age == age_given
           correct_age = true 
        else 
          correct_age = false
        end   

    puts "Our cafeteria serves garlic bread. Should we order some for you (y/n)?"
    garlic_bread = gets.chomp
        if garlic_bread == "y"
          garlic_bread = true
        else 
          garlic_bread = false
        end   

    puts "Would you like to enroll in the company's health insurance (y/n)?"
    health_insurance = gets.chomp
        if health_insurance == "y"
          health_insurance = true
        else 
          health_insurance = false
        end     


    case
      when  (name) && ((correct_age) && (garlic_bread || health_insurance))
        puts "Probably not a vampire."
        
      
      when (name) && ((!garlic_bread || !health_insurance) && (!correct_age)) && !(!garlic_bread && !health_insurance)
        puts "Probably a vampire."
        
        
      when (name) && ((!correct_age) && (!garlic_bread && !health_insurance))
        puts "Almost certainly a vampire."
        
      
      when !name
        puts "Definitely a vampire."
        
        
      else
        puts "Results inconclusive"
        
      end  
application_number += 1
end 



 








