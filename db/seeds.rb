# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


if ParkingSpot.count.zero?
  spot_types = ['car', 'bike']
  chars = ['A', 'B', 'C', 'D']
  nums =
  spots = []
  chars.each do |char|
    (1..20).each do |num|
      spots << {name: "#{char}#{num}", spot_type: spot_types.sample}
    end
  end
  ParkingSpot.create(spots)
end

if Vehicle.count.zero?
  types = ['Car', 'Bike']
  vehicles = []
  (1..100).each do |num|
    vehicles << {registration_number: rand(36**8).to_s(36), type: types.sample}
  end
  Vehicle.create(vehicles)
end
