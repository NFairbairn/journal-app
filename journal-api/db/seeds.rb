# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name: "Noah")
u2 = User.create(name: "Jenny")

j1 = Journal.create(subject: "whatever", user: u2)
j2 = Journal.create(subject: "pirates", user: u1)

e1 = Entry.create(title: "a pirates life for me", content: "yo ho yo ho a priates life for you", journal: j1)
e2 = Entry.create(title: "red bull gives you wings", content: "help me before i drown in crisp pear", journal: j2)