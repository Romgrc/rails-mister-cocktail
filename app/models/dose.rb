class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail, presence: true, uniqueness: { scope: :ingredient }
  validates :ingredient, presence: true, uniqueness: { scope: :cocktail }
  # validates_uniqueness_of :cocktail, scope: :ingredient
  belongs_to :cocktail
  belongs_to :ingredient
end
