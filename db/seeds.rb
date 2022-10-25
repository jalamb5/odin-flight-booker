# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Airport.create(city: "San Francisco", code: "SFO")
# Airport.create(city: "San Jose", code: "SJC")
# Airport.create(city: "Oakland", code: "OAK")
Airport.delete_all
Flight.delete_all

airports = {
  SFO: 'San Francisco',
  SJC: 'San Jose',
  OAK: 'Oakland',
  LHR: 'London'
}

airports.each do |code, city|
  Airport.create({ city:, code: code.to_s })
end

100.times do
  departing = Airport.all.sample
  arriving = Airport.all.sample
  arriving = Airport.all.sample while arriving == departing
  time = DateTime.now + rand(10_000)
  duration = rand(24)

  Flight.create({ departure_id: departing.id, arrival_id: arriving.id, departure_time: time, duration: })
end
