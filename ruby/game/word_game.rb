#PSEUDOCODE 
#This is a word guessing game. The purpose of the game is for player 2 to guess the word player 1 entered, 
#one letter at a time. Player 2 has a limited number of guesses.
#all pseudocode can be found in ./game_pseudocode.txt file. 

#WordGame class declaration 
class WordGame 
attr_reader :letters, :new_word, :guessed_letters, :guess_count, :guess_allowed

  def initialize(word) 
    @letters = word.chars
    @guess_count = 0
    @guess_allowed = @letters.count * 2
    @new_word= Array.new(@letters.count, '_')
    @guessed_letters = []
  end  
  def increase_count(letter_entered)
    if !@guessed_letters.include?(letter_entered)
      @guess_count += 1
    end     
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

#Driver code- User Interface
puts "Welcome to The Word Guessing Game. The purpose of the game is for player 2 to guess the word player 1 entered, one letter at a time."
puts "Player 2 has a limited number of guesses."
puts "Player 1, please enter a word for player 2 to guess."
word = gets.chomp.downcase
game = WordGame.new(word)
puts "The word has #{word.length} letters."

until game.guess_allowed - game.guess_count == 0 || game.new_word.join("") == word 
  puts "Player 2, You have #{game.guess_allowed - game.guess_count} guesses left."
  puts "Please enter a letter."
  letter_entered = gets.chomp
  game.increase_count(letter_entered)
  game.enter_guess(letter_entered)
  game.evaluate_guess(letter_entered)
  puts "This is what you have guessed thus far:" 
  p game.new_word.join(" ")
end 
if game.new_word.join("") == word 
  puts "Player 2, you got it! You win!"
else 
  puts "Player 2, you couldn't guess correctly. You lose!"
end     


 
 