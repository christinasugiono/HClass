class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings

  validates :name, presence: true, uniqueness: true
  validates :description, :price, :brand, :category, presence: true
end
