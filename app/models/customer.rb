class Customer < ApplicationRecord
  attr_accessor :number_of_pianos

  belongs_to :user
  has_many :pianos, dependent: :delete_all
  has_many :appointments, dependent: :delete_all
  # has_many :appointments, through: :pianos

  validates :name, presence: true
  validates :phone_number, :numericality => true, :allow_nil => true

  def number_of_pianos
    number = Piano.where(user_id: self[:user_id], customer_id: self[:id])
    length = number.length
    self.number_of_pianos = length
  end
end
