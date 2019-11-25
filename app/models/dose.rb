class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail, uniqueness: { scope: :ingredient } # scope veut dire que la dose est unique dans un cocktail il se fie à un ingredient
end
