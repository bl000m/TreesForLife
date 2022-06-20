class Adoption < ApplicationRecord
  belongs_to :user
  belongs_to :tree
  has_one :review, dependent: :destroy
end
