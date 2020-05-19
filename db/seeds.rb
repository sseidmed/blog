# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Customer.destroy_all

mike = Customer.create!(full_name: "Mike Hannigan")
steph = Customer.create!(full_name: "Stephanie Anderson")
shahlo = Customer.create!(full_name: "Shahlo Seidmedova")
zack = Customer.create!(full_name: "Zackery Hunt")
