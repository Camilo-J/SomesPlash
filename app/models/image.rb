class Image < ApplicationRecord
  # Associations
  has_one_attached :photo
  belongs_to :category, counter_cache: true
  has_many :comments, as: :commentable, dependent: :destroy
  # Validations
  validates: title, presence: true
  validates: category_id, presence: true
end
