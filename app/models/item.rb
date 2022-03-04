class Item < ApplicationRecord
  CATEGORIES = ["Clothes", "Shoes", "Bags", "Accesories"]
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  include PgSearch::Model
  # multisearchable against:
  pg_search_scope :search_by,
    against: [:name, :description, :brand, :category, :address],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  validates :name, presence: true, uniqueness: true
  validates :description, :price, :brand, :address, :photo, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
