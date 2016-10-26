# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Album.delete_all()
Artist.delete_all()

a1 = Artist.create({name: "The Cure", genre: "Indie Rock"})
a2 = Artist.create({name: "The Smiths", genre: "Indie Rock"})

album1 = Album.create({name: "The Head on the Door", genre: "Indie Rock", artist_id: a1.id})
album2 = Album.create({name: "The Queen is Dead", genre: "Indie Rock", artist_id: a2.id})

Stock.create({level: 10, price: 12.99, album_id: album1.id})
Stock.create({level: 6, price: 13.99, album_id: album2.id})