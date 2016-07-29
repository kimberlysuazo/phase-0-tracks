require_relative 'word_game'

describe WordGame do 
  let(:game){WordGame.new("testing")}

it "breaks word given on initialization into letter array" do 
  expect(game.letters).to eq ["t", "e", "s", "t", "i", "n", "g"]
end   