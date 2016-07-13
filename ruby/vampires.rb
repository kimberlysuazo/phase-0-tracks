puts "How many applications will you be filing?"

#Use this while loop to ensure user inputs a valid number. 
while true
     employees_to_process = gets.chomp.to_i
           if employees_to_process != 0 
            break
          else 
            puts "Please answer with a valid number."
          end     
      end 

#This while loop will repeat program until all employees have been processed. 
while employees_to_process > 0 

#VAMPIRE DETECTION QUESTIONS 

#Set Boolean to inspect whether the name entered matches Tu Fang or Drake Cula. 
    puts "What's the applicant's name?"
    name = gets.chomp.downcase
        if name == "drake cula" || name == "tu fang"
          name = false
#Setting a condition that sets either name as "Definitely a Vampire" here would stop the survey questions. 
#I dont set that condition until all questions have been asked.   
        else 
          name = true
        end       

    puts "How old are you?"
#Use this while loop to ensure user inputs a valid number.     
      while true
      age_given = gets.chomp.to_i
          if age_given != 0 
            break
          else 
            puts "Please answer with a valid number."
          end 
      end 
          
    puts "What year were you born?"
#Use this while loop to ensure user inputs a valid number.     
      while true
        birth_year = gets.chomp.to_i
            if birth_year != 0 
            break
          else 
            puts "Please answer with a valid number."
          end 
      end 

current_year = 2016
#This calculates whether user gave the correct age
    actual_age = current_year - birth_year
        if actual_age == age_given
           correct_age = true 
        else 
          correct_age = false
        end   
    
   
      
    puts "Our cafeteria serves garlic bread. Should we order some for you (y/n)?"
#Use this while loop to ensure user inputs a valid answer.     
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
#Use this while loop to ensure user inputs a valid answer.      
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



    puts "Please enter any allergies you may have. Type the name of the allergy followed by ENTER until finished inputting allergies. When finished, type \"done\"."
#Use this while loop to ensure user can answer until typing done.
    while true
       allergies = gets.chomp.downcase
          if allergies == "done"
            break
          end  
    end  
    
#VAMPIRE DETECTION LOGIC BEGINS           

            case
              when allergies == "sunshine" && name
                puts "Probably a vampire."
              
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
     
            
employees_to_process -= 1
end 
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

