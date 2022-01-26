class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  # has_many :cars, through: :bookings
  has_many :owned_cars, foreign_key: "user_id", class_name: "Car"
  has_many :booked_cars, through: :bookings, source: :car

end
