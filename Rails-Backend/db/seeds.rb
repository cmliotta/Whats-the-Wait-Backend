# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

restaurant = Restaurant.create(first_name: 'John', last_name: 'Doe', restaurant_name: 'Johns BBQ', email: 'g@g.com', city: "sf", state: "ca", zip: "94591", phone: "707-707-7007", password: "food")

restaurant2 = Restaurant.create(first_name: 'Joe', last_name: "Schmo", restaurant_name: 'Joes Ribs', email: 'a@a.com', city: "sf", state: "ca", zip: "94591", phone: "737-707-7007", password: "food")

patron = Patron.create(first_name: 'Jane', last_name: 'Doe', cell_phone: "555-555-5555", email: "j@j.com", password: "food")
patron2 = Patron.create(first_name: 'Gaille', last_name: "Chua", cell_phone: "777-777-7777", email: "e@e.com", password: "food")

reservation = Reservation.create(restaurant_id: 1, patron_id: 1, minutes: 30, party_size: 4)
reservation2 = Reservation.create(restaurant_id: 1, patron_id: 2, minutes:40, party_size:3)
