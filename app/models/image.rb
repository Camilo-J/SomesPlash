class Image < ApplicationRecord
  # Associations
  has_one_attached :photo
  belongs_to :category, counter_cache: :photo_count
  has_many :comments, as: :commentable, dependent: :destroy
  # Validations
  validates :title, presence: true
end
