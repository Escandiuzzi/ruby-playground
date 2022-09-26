require_relative 'list'

def print_options
  puts "Linked List - Ruby Playground"
  puts "Select an option \n 1 - Add\n-1 - Exit \n"

  input = gets.chomp

  return input
end

list = List.new

input = print_options

while input.to_i == 1
  puts "Insert a number to add on the list or 0 to exit: "
  value = gets.chomp.to_i

  if value == 0
    break
  end

  list.add value
end

list.print_all_items



