class User < ApplicationRecord
  has_secure_password
  has_many :customers
  has_many :pianos, through: :customers
  has_many :appointments

  validates :name, presence: :true
  validates :username, uniqueness: :true
end
