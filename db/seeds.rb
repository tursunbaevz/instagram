# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: 'admin', email: 'admin@gmail.com', password: 'password', password_confirmation: 'password')





post1 = Post.create(
	description: 'new post', 
	image:  File.new("#{Rails.root}/public/uploads/1.jpg"),
	user_id: user1.id


	)

 Comment.create(
 	content: 'bla bla', 
 	post_id: post1.id,
 	user_id: user1.id
 	)