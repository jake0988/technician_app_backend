# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Bobby", username: "BobbyUser", password: "password")
Customer.create(name: "Sally Jessie", address: "1515 Park Ave NY, NY 10001, phone_number: 343 3433444", number_of_pianos: 1, user_id: 1)
Piano.create(make: "Steinway", model: "M", serial: "M1242", user_id: 1, customer_id: 1, year: 1942, notes: "Repair soundboard, voicing, ivory chip repair, repair casters, fix lyre, check dip, strike, aftertouch, clean up key-height.")
Appointment.create(initial_a4: 436, work_done: "Tuning, voiced high treble.", price: 320, date: 03/04/1999, hours: 3, user_id: 1)
p = Piano.first
a = Appointment.first
p.appointments << a


a = Customer.create(name: "Sam John",  email: "sjohn@gmail.com", user_id: 1,address: "123-abc st.", phone_number: "(123) 123-1234")
b = Customer.create(name: "Erving Smith",  email: "esmith@gmail.com", user_id: 1, address: "123-abc st.", phone_number: "(123) 123-1234")
c = Customer.create(name:"Hans Gettleman",  email: "hgettleman@gmail.com", user_id: 1, address: "123-abc st.", phone_number: "(123) 123-1234")
# byebug
d = Piano.new(make: "Steinway", model: "B", serial: "09124WFEW", year: 2000, images: "https://steinwaypianodb.imgix.net/584537/ABubinga1.jpg?&w=1080&h=auto", notes: "YIKES!")

e = Piano.new(make: "Boston", serial: "lkjans42", year: 2003, images: "https://cdn.shopify.com/s/files/1/0050/7160/1782/products/IMG_3024-1_compact.jpg?v=1614120053", notes: "uggh, craigslist")

f = Piano.new(make: "Mason & Hamlin", model: "BB", serial: "lkSFns42", year: 1949, images: "https://www.jimlaabsmusicstore.com/wp-content/uploads/2019/06/Mason-Hamlin-BB.jpeg", notes: "surpisingly musical")

g = Piano.new(make: "Boston", serial: "lkjans42", year: 1993, images: "https://i.ebayimg.com/images/g/kAsAAOSwKtlWq~YX/s-l1600.jpg", notes: "none too shabby!")
a.pianos << d
b.pianos << e
c.pianos << f
a.pianos << g