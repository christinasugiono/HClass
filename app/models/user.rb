class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  has_many :items

  validates :first_name, :last_name, :address, presence: true
  validates :first_name, uniqueness: { scope: :last_name }
end
