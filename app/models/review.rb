class Review < ApplicationRecord
  belongs_to :adoption
  belongs_to :user
  validates :rating, presence: true
  validates :rating, length: { in: 0..5 }
  validates :content, length: { in: 3..114 }
end
