class Recipe < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many_attached :photos
  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true
  validates :kitchen_type, presence: true
  validates :difficulty, presence: true
  validates :cost, presence: true
  validates :preparation, presence: true
  validates :total_time, presence: true
  validates :season, presence: true
  validates :ustensils, presence: true
  searchkick
end
