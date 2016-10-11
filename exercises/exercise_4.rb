require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.new(
  name: "Surrey",
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true)
surrey.save

whistler = Store.new(
  name: "Whistler",
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false)
whistler.save

yaletown = Store.new(
  name: "Yaletown",
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true)
yaletown.save

@mens_stores_array = Store.where(mens_apparel: true).pluck(:name, :annual_revenue)

pp @mens_stores_array

@mens_stores_array.each do |element|
  pp "#{element[0]} #{element[1]}"
end

@womens_stores_array = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000).pluck(:name, :annual_revenue)

@womens_stores_array.each do |element|
  pp "#{element[0]} #{element[1]}"
end
