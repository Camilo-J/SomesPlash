class AddColumnCommentCountToImage < ActiveRecord::Migration[7.0]
  def change
    add_column :images, :comment_count, :integer, default: 0
  end
end
