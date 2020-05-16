class AddColumnsToStories < ActiveRecord::Migration[5.2]
  def change
    add_column :stories, :admin_title, :string
    add_column :stories, :title, :string
    add_column :stories, :thumbnail_image, :string
  end
end
