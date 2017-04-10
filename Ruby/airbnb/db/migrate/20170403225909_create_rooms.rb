class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.integer :capacity
      t.integer :bathrooms
      t.references :user, foreign_key: true
      t.boolean :pets
      t.boolean :smoking
      t.boolean :wifi
      t.boolean :bath
      t.boolean :share
      t.boolean :parties

      t.timestamps
    end
  end
end
