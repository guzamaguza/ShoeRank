class User < ApplicationRecord
  #has_many :regs
  has_many :regs, foreign_key: "user_id", class_name: "Reg"

  has_secure_password

  validates :username, :email, presence: true
  validates :username, uniqueness: true

end
