class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :prenom, presence: true
  validates :nom, presence: true
  validates :batch_name, presence: true
  validates :email, presence: true, uniqueness: true
  has_many :recipes, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_one_attached :avatar
  searchkick
end
