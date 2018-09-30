# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "\n Start running seeds. \n"

User.destroy_all
User.create([
	{
		name: 'Renato Franco',
		email: 'renato.franco@alvoroco.com.br',
		admin: true,
		password: 'teste123',
		password_confirmation: 'teste123'
	},
	{
		name: 'Evandro Berlesi',
		email: 'evando.berlesi@alvoroco.com.br',
		admin: false,
		password: 'teste123',
		password_confirmation: 'teste123'
	}
])

puts "\n Finished running seeds. \n"