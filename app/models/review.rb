class Review < ApplicationRecord
  belongs_to :game

  validates :title, :content, :rating, presence: true
  # validates :rating, numericality: { in: (0..5)}
end
