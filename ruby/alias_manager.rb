def alias_maker (name)
  vowels= "aeioua"
    consonants = "bcdfghjklmnpqrstvwxyzb"
    new_first = []
    n= 0
    until n >= name.length
      if name[n].match(/[aeiou]/)  
          x = vowels.index(name[n])  + 1
          z = vowels[x]
          new_first.insert(n, z)
      else   
          k = consonants.index(name[n])  + 1
          y = consonants[k]
          new_first.insert(n, y)
      end 
      n += 1
    end 
    new_name= new_first.join("").capitalize
end   

names_and_aliases = {}
loop do 
  puts "Please enter the full name (first and last) to change into an alias. If done type \"quit\"."
  full_name= gets.chomp.downcase
  break if full_name == "quit" 

  full = full_name.split(" ")
  original_first_name = full[0] 
  original_last_name = full[1]

  new_full_name = alias_maker(original_last_name) + " " + alias_maker(original_first_name)
  puts "Your new spy alias is: #{new_full_name}"
  names_and_aliases[full_name] = new_full_name
end 



