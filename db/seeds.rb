# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user_1 = User.create!(address: "70 Forest Grove Cove", city: "Piperton", state: "TN", zip: 38017, admin: true, password: "google", email: "whjones@memphis.edu", password_confirmation: "google", first_name: "Wesley", last_name: "Jones", age: 2, membership_type: "", phone: 901123232 )
user_2 = User.create!(address: "90 Central", city: "Memphis", state: "TN", zip: 38018, admin: false, password: "tester", email: "john@smith.edu", password_confirmation: "tester", first_name: "John", last_name: "Smith", phone: 9014969849, membership_type: "Adult Pre-Registration", age: 28, middle_name: "Local" )