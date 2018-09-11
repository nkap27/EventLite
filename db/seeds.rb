# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

eventName = Faker::GameOfThrones.house
event = [" concert", " festival", " party"]

performer = Faker::GameOfThrones.character
location =  Faker::GameOfThrones.city
date = Faker::Time.backward(14, :evening)
description = "#{performer} is performing at #{location} on #{date}"
Event.create(name: eventName, image_url: 'https://cdn-s3.allmusic.com/release-covers/500/0000/826/0000826057.jpg', date: date, description: description)
Event.create(name: eventName, image_url: 'https://cdn-s3.allmusic.com/release-covers/500/0000/826/0000826057.jpg', date: date, description: description)

name = Faker::Name.name
imageUrl = HTTParty.get("https://dog.ceo/api/breeds/image/random")["message"]
Attendee.create(name: name, image_url: imageUrl, event_id: 1)
Attendee.create(name: name, image_url: imageUrl, event_id: 2)
