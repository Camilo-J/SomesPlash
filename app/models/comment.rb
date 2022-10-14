class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true, counter_cache: true # :comment_count
  validates :body, presence: true
end
