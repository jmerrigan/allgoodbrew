json.extract! product, :id, :shop_profile_id, :name, :price, :style, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
