# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

User.create!(name: 'Admin', email: 'admin@mail.ru', password: 'qweqwe', password_confirmation: 'qweqwe', admin: true)

4.times do
	fake_name = Faker::Name.first_name
	User.create!(name: fake_name, email: fake_name+'@mail.ru', password: 'qweqwe', password_confirmation: 'qweqwe')
	3.times do
		Post.create!(title: Faker::Name.title, image: File.open(File.join(Rails.root.join('public', 'test'), 'test.jpg')), user_id:User.last.id)
	end
end

