class Game < ApplicationRecord
  has_many :regs
  has_many :users, through: :regs
  has_many :questions
end
