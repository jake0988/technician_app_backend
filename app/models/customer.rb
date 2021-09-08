class Customer < ApplicationRecord
  belongs_to :user
  has_many :pianos
  has_many :appointments, through: :pianos
end
