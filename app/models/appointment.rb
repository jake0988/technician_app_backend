class Appointment < ApplicationRecord
  belongs_to :user
  has_many :appointment_pianos
  has_many :pianos, through: :appointment_pianos
  has_many :customers, through: :pianos
end
