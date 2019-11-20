# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name: 'Forsthaus Ilkahöhe',
    address: 'Oberzeismering 2, 82327 Tutzing, Germany',
    phone_number: '+49 8158 8242',
    category: 'chinese'
  },
  {
    name: 'Okinawa',
    address: 'Tel Aviv',
    phone_number: '+375 765 653 423',
    category: 'japanese'
  },
  {
    name: 'Eight over Eight',
    address: 'London',
    phone_number: '+44 645 765 987',
    category: 'french'
  },
  {
    name: 'O Julia',
    address: 'Munich',
    phone_number: '+49 817 65564 635',
    category: 'italian'
  },
  {
    name: 'Uri Buri',
    address: 'Acre',
    phone_number: '+375 7165 625 653',
    category: 'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Restaurants created'
