class Customer < ApplicationRecord
  attr_accessor :number_of_pianos
  attr_reader :id

  belongs_to :user
  has_many :pianos, dependent: :delete_all
  # has_many :appointments, through: :pianos

  validates :name, presence: true
  validates :phone_number, :numericality => true, :allow_nil => true

  def number_of_pianos
    number = Piano.where(customer_id: self[:id])
    length = number.length
    self.number_of_pianos = length
  end
end
