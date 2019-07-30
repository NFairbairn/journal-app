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

e1 = Entry.create(title: "entry 1", content: "entry one", journal: j2)
e2 = Entry.create(title: "entry 2", content: "entry two", journal: j1)
e3 = Entry.create(title: "entry 3", content: "entry three", journal: j2)
e4 = Entry.create(title: "entry 4", content: "entry four", journal: j1)
e5 = Entry.create(title: "entry 5", content: "entry five", journal: j2)
e6 = Entry.create(title: "entry 6", content: "entry six", journal: j1)