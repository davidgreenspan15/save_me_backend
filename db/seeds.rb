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
  work = Category.create(name: "Work")
  other = Category.create(name: "Other")
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



# create transactions
  Transaction.create(kind: "Expense",description: "Netflix",frequency: "Once",price: -12.99,date: "2019-08-09" ,category_id: 1, user_id: 1)
  Transaction.create(kind: "Expense",description: "Rent",frequency: "Once",price: - 200,date: "2019-08-11" ,category_id: 8, user_id: 1)
  Transaction.create(kind: "Expense",description: "HBO",frequency: "Once",price: - 12.99,date: "2019-08-30" ,category_id: 1, user_id: 1)
  Transaction.create(kind: "Expense",description: "Pizza",frequency: "Once",price: - 12.99,date: "2019-08-09" ,category_id: 7, user_id: 1)
  Transaction.create(kind: "Expense",description: "Uber",frequency: "Once",price: - 42.00,date: "2019-08-15" ,category_id: 9, user_id: 1)
  Transaction.create(kind: "Expense",description: "Tuition",frequency: "Once",price: - 150,date: "2019-08-09" ,category_id: 13, user_id: 1)
  Transaction.create(kind: "Expense",description: "Bet",frequency: "Once",price: - 60.00,date: "2019-08-09" ,category_id: 4, user_id: 1)
  Transaction.create(kind: "Expense",description: "Flowers",frequency: "Once",price: - 15.00,date: "2019-08-09" ,category_id: 16, user_id: 1)
  Transaction.create(kind: "Expense",description: "Spotify",frequency: "Once",price: - 12.99,date: "2019-08-09" ,category_id: 1, user_id: 1)
