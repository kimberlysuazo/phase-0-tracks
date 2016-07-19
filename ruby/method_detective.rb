# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".insert(1, "o")
'zom'.gsub(/[o]/, 'o' => 'oo') 

# => “zoom”

 "enhance".center(15)
# => "    enhance    "


"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".insert(-1, " suspects")
a = "suspects"
a.prepend("the usual ")
# "the usual".<???>
#=> "the usual suspects"

"suspects".insert(0, "the usual ")
" suspects".gsub " ", "the usual "
# " suspects".<???>
# => "the usual suspects"

"The case of the disappearing last letter".chop

x = "The case of the disappearing last letter"
x[-1] = ""
p x
# => "The case of the disappearing last lette"


"The mystery of the missing first letter".gsub(/^./, "")
"The mystery of the missing first letter".delete "T"

b = "The mystery of the missing first letter"
b.slice! (0)
p b

c = "The mystery of the missing first letter"
c[0] = ""
p c
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

"z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

"How many times does the letter 'a' appear in this string?".count("a")
"How many times does the letter 'a' appear in this string?".scan(/a/).length
# => 4