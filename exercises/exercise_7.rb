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
puts "Enter store name"
print "> "
@store_name = gets.chomp

user_created_store = Store.new(name: @store_name, mens_apparel: false, womens_apparel: false)
user_created_store.save

if user_created_store.errors.messages != {}
  # :name, :mens_apparel, :womens_apparel, :annual_revenue, :base

  puts user_created_store.errors.full_messages
end

# {:base=>["cannot have both apparels false"], :mens_apparel=>[]}
