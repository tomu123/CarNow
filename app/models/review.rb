class Review < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  belongs_to :car
  validates :rating, presence: true
  validates :comment, presence: true
end
