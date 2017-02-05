# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

r1 = Role.create({name: "Regular", description: "Can read bills"})
r2 = Role.create({name: "Auditor", description: "Can read and create bills."})
r3 = Role.create({name: "AAO", description: "Can update and destroy any bills"})
r4 = Role.create({name: "Admin", description: "Can perform any CRUD operation on any resource"})


u1 = User.create({name: "ravi", email: "ravi@gmail.com", password: "ravi1234", password_confirmation: "ravi1234", role_id: r1.id})
u2 = User.create({name: "vijay", email: "vijay@gmail.com", password: "vijay1234", password_confirmation: "vijay1234", role_id: r2.id})
u3 = User.create({name: "noor", email: "noor@gmail.com", password: "noor1234", password_confirmation: "noor1234", role_id: r3.id})
u4 = User.create({name: "khaja", email: "khaja@gmail.com", password: "khaja1234", password_confirmation: "khaja1234", role_id: r4.id})


b1 = Bill.create({name: "Medicall Bill", user_id: u2.id})
b2 = Bill.create({name: "Tada Bill", user_id: u4.id})
b3 = Bill.create({name: "LTC Bill", user_id: u3.id})

