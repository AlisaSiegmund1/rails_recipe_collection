class Recipe < ApplicationRecord
  has_one_attached :photo
  has_many :ingredients
end
