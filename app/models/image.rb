class Image < ApplicationRecord
  belongs_to :category
  has_many :comments, as: :commentable, dependent: :destroy
end
