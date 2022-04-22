json.extract! cafe, :id, :name, :address, :opening_hour, :closing_hour, :latitude, :longitude, :user_id, :created_at, :updated_at
json.url cafe_url(cafe, format: :json)
