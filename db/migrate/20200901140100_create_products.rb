class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :gender
      t.string :brand
      t.string :size
      t.integer :price
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
