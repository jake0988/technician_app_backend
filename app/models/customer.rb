class Customer < ApplicationRecord
  belongs_to :technician, class_name: "user"
  has_many :pianos
  has_many :appointments, through: :pianos
end
