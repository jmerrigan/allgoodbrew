json.extract! shop_profile, :id, :user_id, :about, :location, :contact_number, :business_name, :created_at, :updated_at
json.url shop_profile_url(shop_profile, format: :json)
