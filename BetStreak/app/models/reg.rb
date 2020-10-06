class Reg < ApplicationRecord
  belongs_to :contest
  belongs_to :game

  validates :datetime_registered, :user_id, :game_id, presence: true
end
