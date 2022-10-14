class Category < ApplicationRecord
  # Associations
  has_one_attached :photo
  has_many :comments, as: :commentable, dependent: :destroy
  # Validations
  validates: name, presence: true
end
