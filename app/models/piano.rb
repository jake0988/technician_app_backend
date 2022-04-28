class Piano < ApplicationRecord
  has_many :appointment_pianos
  has_many :appointments, through: :appointment_pianos
  belongs_to :customer
  has_one_attached :image
  # validates_with FormValidator


end