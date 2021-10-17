class Customer < ApplicationRecord
  belongs_to :user
  has_many :pianos
  has_many :appointments, through: :pianos

  validates :name, presence: true
  validates :phone_number, :numericality => true, :allow_nil => true
end
