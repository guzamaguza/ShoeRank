class Review < ApplicationRecord
  belongs_to :user
  belongs_to :shoe

  validates :title, presence: true
  validates :rating, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than: 10}


  validates :shoe, uniqueness: { scope: :user, message: "has already been reviewed by you"  }

end