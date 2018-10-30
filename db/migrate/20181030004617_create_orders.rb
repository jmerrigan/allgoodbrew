class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :shop_profile, foreign_key: true
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :quantity
      t.string :product_title
      t.integer :product_cost
      t.integer :shipping_cost

      t.timestamps
    end
  end
end
