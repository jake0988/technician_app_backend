class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :customer, optional: true
  has_many :appointment_pianos
  has_many :pianos, through: :appointment_pianos

  validates :date, presence: true

  def created_at
    attributes['created_at'].strftime("%m/%d/%Y %H:%M")
  end

end
