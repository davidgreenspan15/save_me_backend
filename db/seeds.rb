# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create Users
david = User.create(name: "David", username:"rami", password:"123", stock_level:1)
jake = User.create(name: "Jake", username:"jake", password:"123", stock_level:2)



# creating categories
  entertainment = Category.create(name:"Entertainment")
  salary = Category.create(name: "Salary")
  utilities = Category.create(name:"Utilities")
  personal_Care = Category.create(name:"Personal Care")
  food = Category.create(name:"Food")
  rent_mortgage = Category.create(name:"Rent/Mortgage")
  transportation = Category.create(name:"Transportation")
  clothing = Category.create(name:"Clothing")
  medical = Category.create(name:"Medical")
  household_Items = Category.create(name:"Household Item")
  education = Category.create(name:"Education")
  debt = Category.create(name:"Debt")
  investment = Category.create(name:"Investment")
  gift = Category.create(name:"Gift")
