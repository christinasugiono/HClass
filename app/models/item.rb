class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_one_attached :photo
  CATEGORIES = ["Clothes", "Shoes", "Bags", "Accesories"]

  validates :name, presence: true, uniqueness: true
  validates :description, :price, :brand, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
