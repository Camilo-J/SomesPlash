class AddColumnCommentCountToImage < ActiveRecord::Migration[7.0]
  def change
    add_column :images, :comments_count, :integer, default: 0
  end
end
