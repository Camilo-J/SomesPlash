class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true, counter_cache: true
  validates: body, presence: true
end
