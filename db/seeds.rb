# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.create(description: "A beautiful loft with bright sunny windows close to downtown NY", year_built: 2010, square_feet: 3000, bedrooms: 2, bathrooms: 1, availability: "true", address: "98 Downtown St, NY", price: 1000000)

House.create(description: "A small shack close to Fisherman's Wharf", year_built: 1988, square_feet: 1000, bedrooms: 1, bathrooms: 1, availability: "true", address: "Nowhere, SF", price: 4000000)