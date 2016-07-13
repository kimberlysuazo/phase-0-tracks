

application_number = 0
puts "How many employees will you be processing?"

while true
     employees_to_process = gets.chomp.to_i
          if employees_to_process > 0 && employees_to_process < 1000000
            break
          else 
            puts "Please answer with a number between 0 and 1000000"
          end    
      end 

until application_number == employees_to_process

    current_year = 2016

    puts "What the applicant's name?"
    name = gets.chomp.downcase
        if name == "drake cula" || name == "tu fang"
          name = false
        else 
          name = true
        end   
      

    puts "How old are you?"
      while true
      age_given = gets.chomp.to_i
          if age_given > 0 && age_given < 1000000
            break
          else 
            puts "Please answer with a number between 0 and 1000000"
          end    
      end 
          
    puts "What year were you born?"
      while true
        birth_year = gets.chomp.to_i
            if birth_year > 0 && birth_year < 1000000
               break
            else 
               puts "Please answer with a number between 0 and 1000000"
            end    
      end 

    actual_age = current_year - birth_year
        if actual_age == age_given
           correct_age = true 
        else 
          correct_age = false
        end   
    
   
      
    puts "Our cafeteria serves garlic bread. Should we order some for you (y/n)?"
       while true 
        garlic_bread = gets.chomp.downcase  
            if garlic_bread == "y"
              garlic_bread = true
              break
            elsif garlic_bread == "n"
              garlic_bread = false
              break
            else
              puts "Please answer with a \"y\" or a \"n\"."
            end   
        end
    puts "Would you like to enroll in the company's health insurance (y/n)?"
        while true 
         health_insurance = gets.chomp.downcase
            if health_insurance == "y"
              health_insurance = true
              break
            elsif health_insurance == "n"
              health_insurance = false
              break
            else
              puts "Please answer with a \"y\" or a \"n\"."
            end   
        end 



    puts "Please enter any allergies you may have. Type the name of the allergy followed by enter, until finished inputting allergies. When finished, type \"done\"."
    
    while true
       allergies = gets.chomp.downcase
          if allergies == "done"
            break
          elsif allergies == "sunshine"
            puts "Probably a vampire."
            break
          end  
    end       
          if allergies != "sunshine"
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
          end
            
application_number += 1
end 
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."


 








