class User < ApplicationRecord
  has_many :regs
  has_many :games, through: :regs

  has_secure_password

  validates :username, :email, presence: true
  validates :username, uniqueness: true

end
