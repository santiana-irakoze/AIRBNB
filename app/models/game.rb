class Game < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos
  has_many :reviews
end
