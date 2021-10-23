class Piano < ApplicationRecord
  # has_many :appointment_pianos
  # has_many :appointments, through: :appointment_pianos
  belongs_to :customer
  # has_many_attached :images
end