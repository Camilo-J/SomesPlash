class Category < ApplicationRecord
  # Associations
  has_one_attached :photo
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :images, dependent: :destroy
  # Validations
  validates :name, presence: true
end
