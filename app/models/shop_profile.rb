class ShopProfile < ApplicationRecord
  belongs_to :user
  has_one :user
  has_many :products
end
