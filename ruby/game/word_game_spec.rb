require_relative 'word_game'

describe WordGame do 
  let(:game){WordGame.new("testing")}

  it "breaks word given into letter array on initialization" do 
    expect(game.letters).to eq ["t", "e", "s", "t", "i", "n", "g"]
  end  
  it "sets guess count at 0 on initialization on initialization" do 
    expect(game.guess_count).to eq 0
  end  
  it "sets guesses allowed to double the letters on initialization" do 
    expect(game.guess_allowed).to eq 7*2
  end 
  it "sets new guessed letters array initialization" do 
    expect(game.guessed_letters).to eq []
  end 
  it "sets new word array to blanks length equal to letters array on initialization" do 
    expect(game.new_word).to eq ['_', '_', '_', '_', '_', '_', '_']
  end 
  it "Takes in a guess and adds that letter to guessed letters array" do
    game.enter_guess('a')
    expect(game.guessed_letters).to eq ['a']
  end 
  it "Checks whether the letter is in the original word and enters that into new array at correct index" do 
    game.evaluate_guess('t')
    expect(game.new_word).to eq ['t', '_', '_', 't', '_', '_', '_']
  end 
end    


#guess if guess count goes up?? 