class Reg < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :questions
end
