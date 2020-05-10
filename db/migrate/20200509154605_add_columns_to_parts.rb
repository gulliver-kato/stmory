class AddColumnsToParts < ActiveRecord::Migration[5.2]
  def change
    add_column :parts, :text, :string
    add_column :parts, :image, :string
  end
end
