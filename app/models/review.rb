class Review < ApplicationRecord
  belongs_to :adoption
  belongs_to :user
end
