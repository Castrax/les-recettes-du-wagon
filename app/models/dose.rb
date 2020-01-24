class Dose < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient
  validates :description, presence: true
  validates :recipe, uniqueness: { scope: :ingredient }
  accepts_nested_attributes_for :ingredient
end
