class Tree < ApplicationRecord
  belongs_to :user
  has_many :adoptions, dependent: :destroy
  has_one_attached :photo
  validates :name, presence: true
  validates :address, presence: true
  validates :fruits, presence: true
  validates :description, presence: true
  validates :quantity_by_year, presence: true
  validates :fruits, inclusion: { in: ['apple', 'apricot', 'cherry', 'chestnut',  'coconut', 'fig', 'grapefruit', 'hazel', 'mandarin', 'mango', 'mirabellier', 'mulberry', 'olivier', 'orange', 'pear', 'plum'] }
  validates :description, length: { in: 20..280 }
  validates :quantity_by_year, length: { minimum: 1 }
  validates :price_per_year, length: { minimum: 1 }
end
