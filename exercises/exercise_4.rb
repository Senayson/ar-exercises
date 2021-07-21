require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Whistler = Store.create(name: "Whistler", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)
Yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)


for store in @mens_stores do 
  puts "name: #{store.name} annual_revenue: #{store.annual_revenue}"
end

@womens_stores = Store.where(womens_apparel: true, annual_revenue: -Float::INFINITY..1000000  )

# for store in @womens_stores do 
#   puts "name: #{store.name} annual_revenue: #{store.annual_revenue}"
# end