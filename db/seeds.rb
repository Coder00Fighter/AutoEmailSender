# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

guests_list = [
  ['1234', 'Zhiyong Fang(1)', 'zhiyong.fang.1997@gmail.com' ],
  ['5678', 'Zhiyong Fang(2)', 'zhiyong.fang.1997@tamu.edu']
]

guests_list.each do |uid, name, email|
  Guest.create( uid: uid, name: name, email: email )
end