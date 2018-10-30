class Product < ApplicationRecord
  belongs_to :shop_profile
  has_one_attached :image
  has_one :style
end
