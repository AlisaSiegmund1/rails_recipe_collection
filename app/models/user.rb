class User < ApplicationRecord
  has_one_attached :photo
  # Include default devise modules. Others available are:
  # :registerable
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable, :registerable
  has_many :recipes
end

