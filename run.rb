require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test code examples

como = Zoo.new("Como Zoo", "Minneapolis")
central_park = Zoo.new("Central Park Zoo", "NYC")
bronx = Zoo.new("Bronx Zoo", "NYC")



tigger = como.buy_animal("tiger", 450, "Tigger")
kanga = como.buy_animal("kangaroo", 250, "Kanga")
roo = como.buy_animal("kangaroo", 50, "Roo")
winnie = central_park.buy_animal("bear", 300, "Winnie the Poo")
eyor = central_park.buy_animal("donkey", 650, "Eyor")

# binding.pry
# puts "done"
