class AddColumnCommentsCountToCategory < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :comments_count, :integer, default: 0
  end
end
