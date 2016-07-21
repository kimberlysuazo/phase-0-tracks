

#RELEASE 0 
=begin
Search_array method takes an array of integers and an integer to look for. 
  If the integer is found within the array 
    - If returns its index within the array
  If not
    -It returns nil 
=end

def search_array2(array, int)
  x = nil
  array.each_index { |i| if array[i] == int then x = i end }
  x
end

#p search_array2(array, int)

#Below is the first version of the search array, the longer version, which we wrote out first. 
=begin
def search_array(array, int)
  x = nil
  array.each_index do |i|
    if array[i] == int
      x = i
    end
  end
  x
end
=end 

#RELEASE 1
=begin
The fib method takes in a number and returns an array of Fibonacci numbers that is the length of the number entered. 

=end 
def fib(num)
  sequence = [0, 1]
  index_a = 0
  index_b = 1
  (3..num).each do
    num1 = sequence[index_a]
    num2 = sequence[index_b]
    new_num = num1 + num2
    sequence.push(new_num)
    
    index_a += 1
    index_b += 1
  end
  sequence 
end

#p fib(6)

#RELEASE 2
=begin
Sort_squares method takes an array of integers. 
It squares every other number and then returns that new array in ascending order. 
PSEUDOCODE FOR SORT_SQUARES
 -Square every other item in array. 
  -We would like the final array to be in ascending order. Here we use the bubble_sort method which: 
    -Creates a loop  
     - If the item at current index is bigger than item at next index, 
      - swap items
    -If not, then you don't swap. 
    -Continue looping through array until there are not more swaps. 
    -Return new array. 
=end

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end
  array
end

def sort_squares(array)
  array.each_index { |i| if i.even? then array[i]= array[i]**2 end }
  bubble_sort(array)
end 

#array = [23, 4, 2, 45, 0]
#p fib(15)
#p sort_squares(fib(15))