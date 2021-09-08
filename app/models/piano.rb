class Piano < ApplicationRecord
  has_many :appointments_pianos
  has_many :appointments, through: :appointments_pianos
  belongs_to :customer
end