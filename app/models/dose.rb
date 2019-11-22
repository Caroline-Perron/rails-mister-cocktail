class Dose < ApplicationRecord
  belongs to :cocktail
  validates :description
  validates :description, inclusion: { in: [cocktail, ingredient] }, uniqueness: true
end
