# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Bobby", username: "BobbyUser", password: "password")
Customer.create(name: "Sally Jessie", address: "1515 Park Ave NY, NY 10001, phone_number: 343 3433444", number_of_pianos: 1, user_id: 1)
Piano.create(make: "Steinway", model: "M", serial: "M1242", user_id: 1, customer_id: 1, year: 1942, future_work: "Repair soundboard, voicing, ivory chip repair, repair casters, fix lyre, check dip, strike, aftertouch, clean up key-height.")
Appointment.create(initial_a4: 436, work_done: "Tuning, voiced high treble.", price: 320, date: 03/04/1999, hours: 3, user_id: 1)
p = Piano.first
a = Appointment.first
p.appointments << a