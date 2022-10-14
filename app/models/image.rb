class Image < ApplicationRecord
  has_one_attached :photo
  belongs_to :category, counter_cache: true
  has_many :comments, as: :commentable, dependent: :destroy
end
