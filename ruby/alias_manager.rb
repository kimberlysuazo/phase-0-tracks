=begin
Swapping the first and last name.
Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. 
So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.
=end

#PSEUDOCODE 
=begin
-  

Remember .upcase at the end. right before creating new array. 
  
=end

#Puts "Please type in the full name to change into an alias."
#full_name= gets.chomp.downcase

#alias_maker(full_name)
def alias_maker
  vowels= "aeiou"
  consonants = "bcdfghjklmnpqrstvwxyz"

  full_name = "kimberly suazo"
  full = full_name.split(" ")
 
  original_first_name = full[0].chars 

  original_last_name = full[1]

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
p new_first

 

  new_full_name = new_last + new_first #look up how to initialize array 

end 



=begin
original_last_name.gsub!(/[o]/, 'o' => 'oo') 
'hello'.gsub(/[aeiou]/, 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', )    #=> "h3ll*"
p original_last_name

=end
