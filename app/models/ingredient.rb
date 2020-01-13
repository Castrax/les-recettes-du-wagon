class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, presence: true, uniqueness: true
  validates :month, presence: true, inclusion: { in: %w(Janvier Février Mars Avril Mai Juin Juillet Août Septembre Octobre Novembre Décembre), message: "%{value} n'est pas un mois valide" }
  searchkick
end
