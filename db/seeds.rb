# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Car.delete_all
3.times do
  user = User.new(email: Faker::Internet.email, password: '123456', first_name: Faker::Name.first_name,last_name: Faker::Name.last_name , phone_number: Faker::PhoneNumber.cell_phone_in_e164, dni: Faker::IDNumber.valid , birthdate: Faker::Date.birthday(min_age: 18, max_age: 65), license_number: Faker::IDNumber.valid)
  user.save!
  5.times do
    brand = Faker::Vehicle.make
    car = Car.new(brand: brand, model: Faker::Vehicle.model(make_of_model: brand), year: Date.new(Faker::Vehicle.year,1,1), number_plate: Faker::Vehicle.license_plate,color: Faker::Vehicle.color, city: Faker::Address.city, price_per_day: Faker::Number.decimal(l_digits: 2), user: user)
    car.save!
  end
end
