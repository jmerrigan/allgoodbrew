class CreateShopProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :shop_profiles do |t|
      t.references :user, foreign_key: true
      t.string :business_name
      t.text :about
      t.string :location
      t.string :contact_number

      t.timestamps
    end
  end
end
