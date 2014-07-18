# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Webclip.first_or_create!({
  name: "Webclip 1",
  link: "http://www.codeschool.com",
  description: "Lorem ipsum dolor sit amet",
  })
Webclip.first_or_create!({
  name: "Webclip 2",
  link: "http://www.codeschool.com",
  description: "Lorem ipsum dolor sit amet",
  })
Webclip.first_or_create!({
  name: "Webclip 3",
  link: "http://www.codeschool.com",
  description: "Lorem ipsum dolor sit amet",
})

Portal.first_or_create!(title: "Mobile Portal")