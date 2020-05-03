class Recipe < ApplicationRecord
  has_one_attached :photo
  has_many :ingredients, dependent: :destroy
  has_many :steps, dependent: :destroy
  validates :photo, presence: true
  validates :name, presence: true
  validates :category, presence: true
end
