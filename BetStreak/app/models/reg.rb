class Reg < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :questions

  validates :datetime_registered, :user_id, :game_id, presence: true
end
