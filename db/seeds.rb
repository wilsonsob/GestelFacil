# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

puts "destroy done!!!"

User.create(full_name: 'Luanda Admin', email: 'luanda@admin.com', password: '123456', admin: true)
User.create(full_name: 'Eugenia Admin', email: 'eugenia@admin.com', password: '123456', admin: true)
User.create(full_name: 'Wilson Admin', email: 'wilson@admin.com', password: '123456', admin: true)
puts "admins: Eugenia, Luanda e Wilson - done!!!"

User.create(full_name: 'Luanda User', email: 'luanda@teste.com', password: '123456', admin: false)
User.create(full_name: 'Eugenia User', email: 'eugenia@teste.com', password: '123456', admin: false)
User.create(full_name: 'Wilson User', email: 'wilson@teste.com', password: '123456', admin: false)
puts "common profiles: Eugenia, Luanda e Wilson - done!!!"

puts "All seeds completed succesfully!!!"
