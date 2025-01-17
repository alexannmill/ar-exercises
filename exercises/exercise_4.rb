require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

Surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Yaletown = Store.create(name: "Yaletown", annual_revenue: 430000,  mens_apparel: true, womens_apparel: true)


@stores = Store.where(mens_apparel: true)
@stores.each do |store|
  "#{store.name}, #{store.annual_revenue}"
end

@stores1 = Store.where("annual_revenue < ?", 1000000).where(womens_apparel: true)
@stores1.each do |store1|
  puts "#{store1.name}, #{store1.annual_revenue}"
end
