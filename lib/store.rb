class Store < ActiveRecord::Base
  has_many :employees

  validates :name,
              presence: true,
              length: {minimum: 3}
  validates :annual_revenue,
              numericality: {greater_than_or_equal_to: 0}

  validates_inclusion_of :mens_apparel, in: [true, false]
  validates_inclusion_of :womens_apparel, in: [true, false]

  validate :check_genders

  def check_genders
    if mens_apparel == false && womens_apparel == false
      errors.add(:base, 'You are not selling anything!')
    end
  end
end
