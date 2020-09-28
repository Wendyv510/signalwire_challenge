# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create(title: "My Title", tags: ["tag1", "tag2"])

ticket = Ticket.create(user_id: user.id, title: user.title)

tag = Tag.create(tags: user.tags)