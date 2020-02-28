class Cocktail < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  has_one_attached :photo
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
end
