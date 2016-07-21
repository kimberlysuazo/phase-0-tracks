
loop do 
  puts "Please enter the full name (first and last) to change into an alias. If done type \"quit\"."
  full_name= gets.chomp.downcase
  break if full_name == "quit" 

  def alias_maker (full_name)
    
    vowels= "aeioua"
    consonants = "bcdfghjklmnpqrstvwxyzb"

    full = full_name.split(" ")
    original_first_name = full[0] 
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

  alias_maker(full_name)
end 


=begin
create an array 
"#{name_entered} is also known as #{alias_given}" 
data_structure = {
  new_last: new_full_name
  } 



urls = ["http://stackoverflow.com", "http://example.com", "http://foobar.com"]
p res = urls.map{|url| {"url"=>url, "dns_status"=>200, "title"=>url[7..-5]} }
=end 
