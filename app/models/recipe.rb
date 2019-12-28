class Recipe < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :title, presence: true
  validates :description, presence: true
  validates :number_persons, presence: true
  validates :difficulty, presence: true, inclusion: { in: %w(facile moyen difficile),
    message: "%{value} n'est pas un niveau de difficulté valide" }
  validates :cost, presence: true, inclusion: { in: %w(éco moyen cher),
    message: "%{value} n'est pas un niveau de prix valide" }
  validates :preparation, presence: true
  validates :total_time, presence: true, format: { with: /^(0[0-9]|1[0-9]|2[0-3]|[0-9]):[0-5][0-9]$/,
    message: "seulement des heures", multiline: true }
  validates :season, presence: true, inclusion: { in: %w(printemps été automne hiver),
  message: "%{value} n'est pas une saison valide" }
  validates :ustensils, presence: true
end
