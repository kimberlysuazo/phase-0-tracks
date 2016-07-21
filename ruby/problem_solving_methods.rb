

def search_array(array, int)
  x = nil
  array.each_index do |i|
    if array[i] == int
      x = i
    end
  end
  x
end

array = [8, 9, 10, 11, 12]
int = 11

# p search_array(array, int)  


def search_array2(array, int)
  x = nil
  array.each_index { |i| if array[i] == int then x = i end }
  x
end

# p search_array2(array, int)

#-----------------------------------------------------------------------------------------

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

#p fib(100)


# PSEUDOCODE FOR SORT_SQUARES
=begin
 -Square every other item in array. 
  -We would like the final array to be in ascending order. 
  -Create a loop  
   - If the item at current index is bigger than item at next index, 
    - swap items
  -If not, then you dont swap. 
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

array = [23, 4, 2, 45, 0]
p fib(15)
p sort_squares(fib(15))