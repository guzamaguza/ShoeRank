class Reg < ApplicationRecord
  belongs_to :contest
  belongs_to :game
  belongs_to :user

  validates :datetime_registered, :contest_id, :game_id, presence: true
  validates_uniqueness_of  :game_id, :contest_id, scope: :user_id
end
