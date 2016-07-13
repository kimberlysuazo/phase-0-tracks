#secret agent encryption
#METHODS DECLARATION 

=begin
encryption METHOD pseudocode:
-define the method (argument)
  -define index variable
  -define empty return string variable
  -create a loop that cycles through each index until remaining character
    -if it's a letter (if it's NOT a space)
      -advance one letter forward
      -add to return string
    -if "z"
        -add "a" to return string
    -end
  -end loop
  -return the full return string
-end method
=end

#The encrypt method returns the next letter in the alphabet for each inputed value in string.
def encrypt str
  index = 0
  return_str = ""
  until index >= str.length
    if str[index] != " " && str[index] != "z"
      x = str[index].next
      return_str = return_str + x
    elsif str[index] == "z"
      x = "a"
      return_str = return_str + x
    else
      x = str[index]
      return_str = return_str + x
    end
    index += 1
  end
  return return_str
end

=begin
decryption method pseudocode:
-define the method (argument)
  -define index variable
  -define empty return string
  -create alphabet string
  -create a loop that cycles through each index until remaining character
    -if it's not a space
      -find the matching index
      -subtract the index by one
      -rematch it with alphabet string
      -add to return string
    -end
    -add one to the index
  -end the loop
  -return the full return string
-end the method
=end

#The decrypt method returns the previous letter in the alphabet for each inputed value in string.
def decrypt str
  n = 0
  return_str = ""
  alpha = "abcdefghijklmnopqrstuvwxyz"
  until n >= str.length
    if str[n] != " "
      x = alpha.index(str[n]) - 1
      return_str = return_str + alpha[x]
    end
    n += 1
  end
  return return_str
end

#puts decrypt(encrypt("swordfish"))


#OUR DRIVER CODE


=begin
UI pseudocode:
-asks user if they would like to 'encrypt' or 'decrypt' a password
  -if answer is valid
      -continue
  -if answer isn't valid
    -ask again
-asks for the password
-if encrypt
  -call encrypt method
-else
  -call decrypt method
-display results
=end

#ask for encryption or decryption
puts "Would you like to encrypt or decrypt a password?"
while true
  reply = gets.chomp.downcase
    if reply == "decrypt" || reply == "encrypt"
      break
    else
      puts "Please respond with either \"encrypt\" or \"decrypt\"."
    end
end
#ask for password
puts "What is the password?"
password = gets.chomp
#call the method
if reply == "encrypt"
  result = encrypt(password)
else reply == "decrypt"
  result = decrypt(password)
end
#display results
puts "The result is: #{result}."