class Game < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
