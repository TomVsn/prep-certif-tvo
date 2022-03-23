class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, :description, :price, :address, presence: true
  has_many_attached :photos
end
