#GPS 2.2- Kimberly Suazo and Miles McArdle-coe

#PSEUDOCODE
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # separate the string into an array
  # set default quantity to 1
  # print the list to the console 
# output: our output will be a shopping list hash

# Method to add an item to a list
# input: item name and a variable that stores shopping list hash which was previously created. 
# steps: add to hash list 
# output:updated hash

# Method to remove an item from the list
# input: name of key value user wishes to remove, and a variable that stores shopping list hash which was previously created. 
# steps:remove #{key vale} from hash we will use hash.delete method
# output:updated hash 

# Method to update the quantity of an item
# input: item name, quantity to update, and a variable that stores shopping list hash which was previously created. 
# steps:use item as a key and quantity as a value to be updated
# output:updated hash that will have both key and value updated

# Method to print a list and make it look pretty
# input: The shopping list hash which was previously created
# steps: use .each to print each key and corresponding value
# output: a printed list
#Prints out new or modified shopping list
def list_print(shopping_list)
  puts "----------Shopping List----------"
  shopping_list.each do |x,y|
    puts "#{x}, #{y}" 
  end
end
#Creates a shopping list with default quantity of 1 for each item. 
#Calls list_print method to print aesthetically pleasing list. But could''ve also just used puts. 
def create_list(string)
  item_array = string.split(" ")
  shopping_list = {}
  item_array.each do |item|
    shopping_list[item] = 1
  end
  list_print(shopping_list)
  shopping_list
end
#Adds item to shopping list. 
def add_item(list_item,user_list)
#user_list is later defined/used to store a new list of information created when create_list method is called.
#Uses create_list method to format information properly before allowing edits and updates to be done. 
#user_list = create_list(string)  
  user_list[list_item] = 1
  user_list
end
#Removes item from list
def remove_item(list_item,user_list)
  user_list.delete(list_item)
  user_list
end
#Updates quantity of list item
def update_quantity(list_item,quantity,user_list)
  user_list[list_item] =  quantity
  user_list
end


# DRIVER CODE 
list = "lemonade tomatoes onions ice-cream"
create_list(list)
user_list = create_list(list)

add_item('apple', user_list)
p user_list 
remove_item('apple', user_list)
p user_list 
update_quantity('lemonade', 2, user_list)
p user_list
list_print(user_list)

#Release 3
update_quantity('tomatoes', 3, user_list)
update_quantity('ice-cream', 4, user_list)
remove_item('lemonade', user_list)
list_print(user_list)
update_quantity('ice-cream', 1, user_list)
list_print(user_list)

#Release 5- REFLECT
=begin
What did you learn about pseudocode from working on this challenge?
  Pseudocode should mimic the code line by line. Breaking down a code one step at a time. It should indent as you do the code and also use capitalization for keywords. 
  By writing insightful pseudocode, you can keep track of what your method needs to return(output) when defining it.
What are the trade offs of using arrays and hashes for this challenge?
  Creating a hash to store shopping list from the get-go allows the updating of quantity to be easier. 
  If we would use an array to store shopping list, then we would have to create a hash later on.  
What does a method return?
  Because of implicit return, the method returns the value of the last evaluated expression. 
  Therefore, one must be careful with using puts or p at the end of a method, which return nil.
What kind of things can you pass into methods as arguments?
  You can pass different types of variables, objects and data structures. You pass strings, arrays, hashes, integers, etc.  
How can you pass information between methods?
  By creating a new variable which stores what another method returns, 
  you can then use that variable when you call another method.  
What concepts were solidified in this challenge, and what concepts are still confusing?
  This challenge was extremely helpful in understanding how to pass information between methods. 
  It also made it clear that I need to test out my code alot more frequently!! 
  Our GPS guide also helped clear up how to improve our pseudocode for later challenges! 
=end 




