class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :item
  has_many :reviews, dependent: :destroy

  validates :status, :start_date, :end_date, :total_price, presence: true
end
