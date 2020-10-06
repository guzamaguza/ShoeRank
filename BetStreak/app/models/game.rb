class Game < ApplicationRecord
  has_many :regs
  has_many :contests, through: :regs
  has_many :questions
end
