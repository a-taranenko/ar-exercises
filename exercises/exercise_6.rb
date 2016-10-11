require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Fabio", last_name: "Neves", hourly_rate: 60)
@store1.employees.create(first_name: "Jasna", last_name: "Todorovic", hourly_rate: 60)

@store2.employees.create(first_name: "Amna", last_name: "Zletni", hourly_rate: 50)
@store2.employees.create(first_name: "Mengqi", last_name: "Zhu", hourly_rate: 50)
@store2.employees.create(first_name: "Ben", last_name: "Chu", hourly_rate: 50)
@store2.employees.create(first_name: "Anton", last_name: "Taranenko", hourly_rate: 50)

puts @store2.employees.count
