class Dose < ApplicationRecord
  validates   :description, presence: true
  validates_presence_of :cocktail
  validates_presence_of :ingredient

  belongs_to  :cocktail
  belongs_to  :ingredient

  validates :cocktail, presence:true, uniqueness: {scope: :ingredient}
end
