class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.references :shop_profile, foreign_key: true
      t.string :style
      t.text :description

      t.timestamps
    end
  end
end
