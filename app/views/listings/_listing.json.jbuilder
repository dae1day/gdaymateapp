json.extract! listing, :id, :title, :description, :cost, :image, :user_id, :created_at, :updated_at
json.url listing_url(listing, format: :json)
