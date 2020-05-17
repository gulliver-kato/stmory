class ChangeDatatypePrefectureOfUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :prefecture, 'integer USING CAST(prefecture AS integer)'
  end
end
