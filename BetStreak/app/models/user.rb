class User < ApplicationRecord
  has_many :regs
  has_many :games, through: :regs
end
