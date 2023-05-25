# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Status.destroy_all
puts "Statuses destroyed"
Event.destroy_all
puts "Events destroyed"
Comment.destroy_all
puts "Comments destroyed"
User.destroy_all
puts "Users destroyed"

user = User.create!(email: 'email@email.com', username: 'wow', password: '123456789012', password_confirmation: '123456789012')
user2 = User.create!(email: 'email2@email.com', username: 'wow2', password: '123456789012', password_confirmation: '123456789012')
user3 = User.create!(email: 'email3@email.com', username: 'wow3', password: '123456789012', password_confirmation: '123456789012')
status = user.statuses.create!(content: 'wow')
event = user.events.create!(title: 'party')
user.comments.create!(body: 'sounds fun', commentable: event)
user2.comments.create!(body: 'sounds great', commentable: event)
user2.comments.create!(body: ' great', commentable: status)
user3.comments.create!(body: 'sounds lame', commentable: event)
user3.comments.create!(body: 'ok', commentable: status)
user3.comments.create!(body: 'ok2', commentable: status)
user3.comments.create!(body: 'ok3', commentable: status)

# see last 5 comments on your statuses/events from disctinct users
# user.commentable

# user needs to see comments on events and statuses 
# ordered by time desc
# limit 5
# where do we have limitations on this level of query
# is this just an endpoint or its own service with a background worker, hot refresh on the FE
# want strong/immediate consistency not eventual consistency
# how quickly does it get to the nodes
# load distribution, load balancer
# when we horizontally scale we may want multiple replica databases that are load balanced
# systems design interview videos
# how to systems design, systems design answers
# prompt: design spotify
# design twitter or any of the social media apps

