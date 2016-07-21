
def alias_maker 
  puts "Please type in the full name to change into an alias."
  full_name= gets.chomp.downcase
  
  vowels= "aeioua"
  consonants = "bcdfghjklmnpqrstvwxyzb"

  full = full_name.split(" ")
  original_first_name = full[0].chars 
  original_last_name = full[1].chars

  new_first = []
  n= 0
  until n >= original_first_name.length
    if original_first_name[n].match(/[aeiou]/)  
        x = vowels.index(original_first_name[n])  + 1
        z = vowels[x]
        new_first.insert(n, z)
    else   
      k = consonants.index(original_first_name[n])  + 1
      y = consonants[k]
      new_first.insert(n, y)
    end 
    n += 1
  end 
  new_first= new_first.join("")
  
  new_last = []
  n= 0
  until n >= original_last_name.length
    if original_last_name[n].match(/[aeiou]/)  
        x = vowels.index(original_last_name[n])  + 1
        z = vowels[x]
        new_last.insert(n, z)
    else   
      k = consonants.index(original_last_name[n])  + 1
      y = consonants[k]
      new_last.insert(n, y)
    end 
    n += 1
  end 
  new_last= new_last.join("")
  
  new_full_name = new_last.capitalize + " " + new_first.capitalize


  puts "Your new spy alias is: #{new_full_name}"
end 

alias_maker()

