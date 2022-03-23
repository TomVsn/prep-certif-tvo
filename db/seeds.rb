require 'faker'

Booking.destroy_all
Flat.destroy_all
User.destroy_all

# loulou = User.create(email: "loulou@gmail.com", password: "123456", first_name: "Louise", last_name: "Ouldhaddi", username: "loulou")
# pcoppy = User.create(email: "pcoppy@gmail.com", password: "123456", first_name: "Pierre", last_name: "Coppy", username: "pcoppy")
tomtom = User.create(email: "tomtom@gmail.com", password: "123456", first_name: "Tom", last_name: "Voisin", username: "tomtom")
# mymy = User.create(email: "mymy@gmail.com", password: "123456", first_name: "Myriam", last_name: "Delbreil", username: "mymy")

CATEGORIES = ['villa', 'maison', 'loft', 'ferme', 'studio']

10.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  username = "#{first_name}#{last_name}"
  User.create(email: Faker::Internet.email, password: "123456", first_name: first_name, last_name: last_name, username: username)
end

10.times do
  name = Faker::Name.name
  description = Faker::Lorem.words(number: 15)
  address = Faker::Address.street_name
  price = rand 150
  Flat.create(name: name, description: description, address: address, price: price)
end

3.times do
  start_date = Faker::Time.between_dates(from: '2022-03-11', to: '2022-09-30', period: :morning)
  user_id = User.ids.sample
  flat_id = Flat.ids.sample
  Booking.create!(start_date: start_date, end_date: start_date + rand(1..10).days, user_id: user_id, flat_id: flat_id)
end

# User.all.each do |user|
#   participant = Participant.new
#   participant.user = user
#   participant.trip = Trip.all.sample
#   participant.save
# end
