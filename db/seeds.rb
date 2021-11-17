# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
trip_names = [ "Romantic Spots for honeymoons",
               "Top island gateways",
               "Most beautiful palaces",
               "Top spot for hiking"]

trip_names.each do |trip_name|
    Trip.create(name: trip_name)
end