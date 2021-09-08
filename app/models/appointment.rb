class Appointment < ApplicationRecord
  belongs_to :technician, class_name: "user"
  has_many :appointments_pianos
  has_many :pianos, through: :appointments_pianos
  has_many :customers, through: :pianos
end
