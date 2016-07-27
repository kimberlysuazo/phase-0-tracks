module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!!" + " :D"
  end
end

#Driver code test module methods 
puts "Guy finds his car has been scratched at the parking lot. This is his reaction: #{Shout.yell_angrily("NO")}"
puts "Guy finds $20 at the parking lot. This is his reaction: #{Shout.yell_happily("woo hoo")}"

