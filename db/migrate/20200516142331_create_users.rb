class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :nickname
      t.integer :age
      t.integer :gender
      t.integer :maritalstatus
      t.integer :country
      t.string :prefecture
      t.string :email 
      t.string :password_digest
      t.timestamps
    end
  end
end
