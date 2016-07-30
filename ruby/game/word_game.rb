class WordGame 
attr_reader :letters, :guess_allowed, :new_word, :guessed_letters
attr_accessor :guess_count

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
  def evaluate_guess(letter_entered)
    if @letters.include?(letter_entered)
      index = letters.each_index.select {|x| letters[x] == letter_entered}
      index.each do |z|
        @new_word[z] = letter_entered
      end    
    end 
    @new_word
  end 
end   


=begin 
#evaluate_guess(letter_entered)
-is letter_entered present in guessed_letters array? 

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

  if !game.guessed_letters.find(letter_entered)
    game.guess_count += 1
  end   

  break if game.new_word.join("") = word 

  puts “You have #{game.guess_allowed - game.guess_count} guesses left.”
end 

if game.new_word.join("") = word 
  puts "You win!"
else 
  puts "You lose!"
end     
 
=end 