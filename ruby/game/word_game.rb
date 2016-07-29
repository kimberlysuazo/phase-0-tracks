class WordGame 
attr_reader :letters, :guess_allowed, :new_word, :guess_count, :guessed_letters

  def initialize(word) 
    @letters = word.chars
    @guess_count = 0
    @guess_allowed = @letters.count * 2
    @new_word= Array.new(@letters.count, '_')
    @guessed_letters = []
  end   
  def enter_guess(letter_entered)
    @guessed_letters << letter_entered
  end 

end   


=begin
# enter_guess(letter_entered) method 
store that into guessed_letters array 

end 

#evaluate_guess(letter_entered)
-is letter_entered present in guessed_letters array? 

IF letter_entered is not present in guessed_letters array, 
  - guess_count += 1
  -IF letter_entered is present in @letters array, 
    -  @letters.each do |z|
        -if z = letter_entered
          -index= @letters.find_index(z) 
          -@new_word[index] = z
return @new_word.join(" ")  


#Does it count for words with double letter??? 




UI 
enter the word. 
game = WordGame.new 


while game.guess_count <= game.guess_allowed

  break if game.new_word.join("") = word 

  puts “You have #{game.guess_allowed - game.guess_count} guesses left.”
end 

if game.new_word.join("") = word 
  puts "You win!"
else 
  puts "You lose!"
end     
 
=end 