class Contest < ApplicationRecord
  has_many :regs
  has_many :games, through: :regs
end
