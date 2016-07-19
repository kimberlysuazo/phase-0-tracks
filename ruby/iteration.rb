#RELEASE 1

#Declare Array
prime_numbers = [2,3,5,7,11,13]

#Iterate through Array using .each
prime_numbers.each do |x|
  puts "#{x} is a prime number."
end

#Iterate through Array using .map!
prime_numbers.map! do |prime_numbers|
  puts prime_numbers
  prime_numbers + 1
end
puts prime_numbers


#Declare hash 
Family = { "Peter" => "dad",
  "lois" =>  "mom",
  "Chris" => "brother",
  "Meg" => "sister",
  "Stewey" => "brother",
  "Brian" => "dog"
  
  }

#iterate through hash using .each
Family.each { |x,y| puts "#{x}: #{y}" }


# RELEASE 2

=begin
1.
Deletes any values in array that are greater than 5 
prime_numbers.delete_if { |x| x >= 5 }
puts prime_numbers

2.
keeps if value is equal to mom 
Family.keep_if {|x,y| y == "mom"}
puts Family

3.
Returns new hash with changes to reflect conditional statement if evaluated as true
Family.select! {|x,y| y == "sister" }
puts Family

4.
Returns new hash with changes to reflect conditional statement. 
In this case, it will remove "Brian" key and value because it is evaluated as true and the others as false. 
Family.reject! {|x,y| y == "dog"}
puts Family
=end