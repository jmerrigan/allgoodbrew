json.extract! product, :id, :name, :price, :shop_profile_id, :style, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
