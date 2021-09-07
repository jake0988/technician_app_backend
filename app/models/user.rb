class User < ApplicationRecord
  has_secue_password
  has_many :customers
  has_many :pianos, through: :customers
  has_many :appointments, through: :pianos 
end
