# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Gemtutorial.destroy_all
Step.destroy_all

Gemtutorial.create(name: "Devise", repo: "https://github.com/plataformatec/devise", description: "Devise is a flexible authentication solution for Rails based on Warden",
  genre: "Register & Authentication user",
  score: 5)