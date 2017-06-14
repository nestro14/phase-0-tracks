# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Create an empty hash to store items
  # set default quantity to nil.
  # print the list to the console [can you use one of your other methods here?]
# output: travse my hash and print out the list item and values(quantities)

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: add item to list using hash notation hash_name[item] = value
# output: output what items i entered into the hash

# Method to remove an item from the list
# input: item name, which is a string
# steps: i would the delete method in hash class, hash_name[item].delete
# output: output the item that was removed from the hash

# Method to update the quantity of an item
# input: item name - string value
# steps: hash_name[item] = updated_value
# output: output the update and item and value

# Method to print a list and make it look pretty
# input: hash of items
# steps: iterate through the hash and output a sentance referancing the key and value using string interpolation
# output: my nice little sentances

list_of_items = {}

def create_list(string, empty_hash)
  string.split(' ').each do |item|
    empty_hash[item] = 0
  end
end

def add_item(string, hash_items, quantity = nil)
  hash_items[string] = quantity
end

def remove_item(string, hash_items)
  hash_items.delete(string)
end

def update_item_quantity(string, quantity, hash_items)
  hash_items[string] = quantity
end

def print_list(list_of_items)
  list_of_items.each_pair  do |item, quantity|
    puts "There are #{quantity} #{item}s in the this list."
  end
end

create_list("lemon tomato cucumber", list_of_items)
add_item("apple",list_of_items)
remove_item('lemon', list_of_items)
update_item_quantity('apple', 3, list_of_items)
print_list(list_of_items)