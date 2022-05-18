class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, :restaurant_id, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: 0..5,
    message: "%{value} should be between 0 and 5" }

end
