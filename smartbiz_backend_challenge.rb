# Erlang tuple Properties:
#   - Specific Size
#   - Ordering
#   - Can be grouped
#   - Can have duplicates
#   - Can have differing elements
#   - Can be unpacked

# Since Ruby doesn't have a built-in tuple data structure, I decided
#   to represent the objects as a two element list where the first
#   element is a string representing the name and the second element
#   is another list, where the first element in the nested list
#   represents the weight type and the second element represents the
#   weight. Example of valid objects can be seen below:
#     [name, ["l", 400]] OR
#     [name, ["k", 400]]

# Additionally you could also represent the objects as a Weight class,
#   where the Weight instance can have a name, type, and weight. I
#   implemented both below. format_weight_list utilizes the nested list
#   while format_weight_class utilizes a class

def format_weight_list(list_of_objects)
  converted_list = convert_list_to_k_list(list_of_objects)
  print_weight_list(converted_list)
  max_object, min_object = find_max_and_min_list(converted_list)
  print_max_and_min_list(max_object, min_object)
end


# Converts a list of objects to type "k" weight. If the object already
#   has a type "k" weight, nothing is done, but if the object has a
#   type "l" weight, the object is converted.
def convert_list_to_k_list(list_of_objects)
  list_of_objects.map do |object|
    weight_type = object[1][0]

    if weight_type == "l"
      name = object[0]
      weight = object[1][1]

      [name, ["k", weight / 0.45359237]]
    else
      object
    end
  end
end

# Takes a list of objects and prints the name and weight of
#   the object in a nice format. Each object in the list is
#   printed on a new line

# Takes in only the first 15 characters of the object
#   if the object name is longer than 15 characters,
#   outputs 15 * "*" as the name. If the object name
#   is less than 15 chars, ljust allows us to pad with
#   extra spaces
def print_weight_list(list_of_objects)
  list_of_objects.each do |object|
    if object[0].length > 15
      name = "*" * 15
    else
      name = object[0].ljust(15)
    end

    puts "#{name} #{object[1][1]} c"
  end
end

# Finds the heaviest and least heaviest object within the list
#   and returns a list of the objects as [max_object, min_object]
def find_max_and_min_list(list_of_objects)
  max_object = nil
  min_object = nil

  list_of_objects.each do |object|
    cur_weight = object[1][1]

    if max_object.nil? || max_object[1][1] < cur_weight
      max_object = object
    elsif min_object.nil? || min_object[1][1] > cur_weight
      min_object = object
    end
  end

  [max_object, min_object]
end

# Takes in a max and min object and prints the objects weight and name
def print_max_and_min_list(max_object, min_object)
  puts "Max weight was #{max_object[1][1]} c in #{max_object[0]}"
  puts "Min weight was #{min_object[1][1]} c in #{min_object[0]}"
end

# Test to check the program works
ob1 = ["ob1", ["l", 400]]
ob2 = ["ob2", ["k", 400]]
ob3 = ["ob3", ["l", 1000]]
ob4 = ["ob4", ["l", 1000]]
ob5 = ["abcdefghijklmnop", ["k", 100]]
ob6 = ["abcdefghijklmno", ["k", 5]]

list = [ob1, ob2, ob3, ob4, ob5, ob6]

format_weight_list(list)


# Weight Class Implementation
#############################
#############################
#############################
#############################
class Weight
  attr_reader :name, :weight_type, :weight_amount

  def initialize(name, weight_type, weight_amount)
    @name = name
    @weight_type = weight_type
    @weight_amount = weight_amount
  end
end

def format_weight_class(list_of_objects)
  converted_list = convert_list_to_k_class(list_of_objects)
  print_weight_class(converted_list)
  max_object, min_object = find_max_and_min_class(converted_list)
  print_max_and_min_class(max_object, min_object)
end

def convert_list_to_k_class(list_of_objects)
  list_of_objects.map do |object|
    if object.weight_type == "l"
      name = object.name
      weight_amount = object.weight_amount

      Weight.new(name, "l", weight_amount / 0.45359237)
    else
      object
    end
  end
end

def print_weight_class(list_of_objects)
  list_of_objects.each do |object|
    if object.name.length > 15
      name = "*" * 15
    else
      name = object.name.ljust(15)
    end

    puts "#{name} #{object.weight_amount} c"
  end
end

def find_max_and_min_class(list_of_objects)
  max_object = nil
  min_object = nil

  list_of_objects.each do |object|
    cur_weight = object.weight_amount

    if max_object.nil? || max_object.weight_amount < cur_weight
      max_object = object
    elsif min_object.nil? || min_object.weight_amount > cur_weight
      min_object = object
    end
  end

  [max_object, min_object]
end

def print_max_and_min_class(max_object, min_object)
  puts "Max weight was #{max_object.weight_amount} c in #{max_object.name}"
  puts "Min weight was #{min_object.weight_amount} c in #{min_object.name}"
end

# Test to check the program works. Uncomment to test
ob1 = Weight.new("ob1", "l", 400)
ob2 = Weight.new("ob2", "k", 1000)
ob3 = Weight.new("ob3", "l", 1000)
ob4 = Weight.new("ob4", "l", 1000)
ob5 = Weight.new("abcdefghijklmnop", "k", 100)
ob6 = Weight.new("abcdefghijklmno", "k", 5)

list = [ob1, ob2, ob3, ob4, ob5, ob6]

format_weight_class(list)
