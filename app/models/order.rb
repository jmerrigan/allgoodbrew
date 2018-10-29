class Order < ApplicationRecord
  belongs_to :shop_profile
  belongs_to :user
end
