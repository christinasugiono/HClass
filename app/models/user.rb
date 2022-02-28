class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy
  has_many :items, dependent: :destroy

  validates :first_name, :last_name, :address, presence: true
  validates :first_name, uniqueness: { scope: :last_name }
end
