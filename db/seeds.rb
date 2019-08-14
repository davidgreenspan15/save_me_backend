# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'sm.csv'))
csv = CSV.parse(csv_text, :headers => false, :encoding => 'ISO-8859-1')
csv.each do |row|

  s = Stock.new
  s.name = row[0]
  s.symbol = row[1]
  s.purchase_price = row[2].to_f
  s.ytd = row[3].to_f
  s.three_ytd = row[4].to_f
  s.description = row[5]
  s.category = row[6]
  s.sector = row[7]
  s.risk_level = row[8].to_i
  s.stock_url = row[9]
  s.save
  puts "#{s.name}, #{s.symbol} saved"
end

puts "There are now #{Stock.count} rows in the transactions table"



# create Users
david = User.create(name: "David", username:"rami", password:"123", stock_level:1)
jake = User.create(name: "Jake", username:"jake", password:"123", stock_level:2)



# creating categories
  entertainment = Category.create(name:"Entertainment",color: 'rgb(233, 15, 15)')
  salary = Category.create(name: "Salary",color: 'rgb(233, 15, 179)')
  work = Category.create(name: "Work" ,color: 'rgb(222, 233, 15)')
  other = Category.create(name: "Other",color: 'rgb(102, 222, 164)')
  utilities = Category.create(name:"Utilities" ,color: 'rgb(15, 89, 233)')
  personal_Care = Category.create(name:"Personal Care" ,color: 'rgb(152, 46, 189)')
  food = Category.create(name:"Food" ,color: 'rgb(242, 246, 37)')
  rent_mortgage = Category.create(name:"Rent/Mortgage",color: 'rgb(233, 126, 15)')
  transportation = Category.create(name:"Transportation" ,color: 'rgb(184, 142, 244)')
  clothing = Category.create(name:"Clothing",color: 'rgb(99, 111, 147)')
  medical = Category.create(name:"Medical",color: 'rgb(102, 102, 55)')
  household_Items = Category.create(name:"Household Item",color: 'rgb(244, 208, 206)')
  education = Category.create(name:"Education",color: 'rgb(233, 15, 146)')
  debt = Category.create(name:"Debt",color: 'rgb(49, 56, 50)')
  investment = Category.create(name:"Investment" ,color: 'rgb(222, 206, 206)')
  gift = Category.create(name:"Gift" ,color: 'rgb(170, 94, 94)')



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
