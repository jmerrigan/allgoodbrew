class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :shop_profile, foreign_key: true
      t.references :user, foreign_key: true
      t.text :order_info
      t.string :shop_name
      t.string :total_cost

      t.timestamps
    end
  end
end
