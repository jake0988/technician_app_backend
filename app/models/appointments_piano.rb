class AppointmentsPiano < ApplicationRecord
  belongs_to :appointment
  belongs_to :piano
end
