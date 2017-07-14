# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # split string into array
  # create new hash
  # iterate over array
  # move item into hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: grocery hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  #insert item into the hash
# output: grocery hash with added item

# Method to remove an item from the list
# input: list, item name
# steps:
  # remove the item from the list
# output: grocery hash with out said item

# Method to update the quantity of an item
# input: list, item name, new quantity
# steps:
  # update the quantity
# output: grocery hash with updatedv quantity

# Method to print a list and make it look pretty
# input: list
# steps:
  #print out each key value pairs on own line
# output: no output


def groceries(item_str)
  grocery_array = item_str.split
  grocery_list = {}
  grocery_array.each do |item|
    grocery_list[item] = 1
  end
  grocery_list
end

def add_item(list, item, quantity)
  list[item] = quantity
  list
end

def remove_item(list, item)
  list.delete(item)
  list
end

def update_list(list, item, quantity)
  list[item] = quantity
  list
end

def print_list(list)
  puts "Grocery List: "
  list.each do |item, quantity|
    puts "** #{item} = #{quantity}"
  end
end

 grocery_list = groceries("carrots apples cereal pizza")

 p add_item(grocery_list, "ice cream", 1)

 p remove_item(grocery_list, "apples")

 p update_list(grocery_list, "ice cream", 3)

 print_list(grocery_list)

