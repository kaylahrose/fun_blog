# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.create!(email: 'email@email.com', username: 'wow', password: '123456789012', password_confirmation: '123456789012')
user2 = User.create!(email: 'email2@email.com', username: 'wow2', password: '123456789012', password_confirmation: '123456789012')
user.statuses.create!(content: 'wow')
event = user.events.create!(title: 'party')
user.comments.create!(body: 'sounds fun', commentable: event)
user2.comments.create!(body: 'sounds great', commentable: event)