require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Enter Store Name:"
@give_store = gets.chomp

@new_store = Store.create(name: @give_store)
puts @new_store.errors.full_messages