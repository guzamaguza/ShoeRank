class Shoe < ApplicationRecord
  belongs_to :brand
  belongs_to :user #creator of it
  has_many :reviews
  has_many :users, through: :reviews #people who have reviewed it
  #has_one_attached :image

  validates :model, presence: true
  validate :not_a_duplicate

  scope :order_by_rating, -> {left_joins(:reviews).group(:id).order('avg(rating) desc')}

  def self.alpha
    order(:model)
  end


  def brand_attributes=(attributes)
    self.brand = Brand.find_or_create_by(attributes) if !attributes['name'].empty?
    self.brand
  end

  def thumbnail
    self.image.variant(resize: "100x100")
  end

  def not_a_duplicate
    # if there is already an ice cream with that flavor && brand, throw an error
    shoe = Shoe.find_by(model: model, brand_id: brand_id)
    if !!shoe && shoe != self
      errors.add(:flavor, 'has already been added for that brand')
    end
  end

  def brand_name
    brand.try(:name)
  end

  def flavor_and_brand
    "#{model} - #{brand.try(:name)}"
  end

end