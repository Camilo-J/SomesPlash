class AddColumnPhotoCountToCategory < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :photo_count, :integer, default: 0
  end
end
