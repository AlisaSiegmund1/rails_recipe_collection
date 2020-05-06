class Step < ApplicationRecord
  belongs_to :recipe
  validates :content, presence: true
end
