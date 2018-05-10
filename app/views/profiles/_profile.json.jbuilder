json.extract! profile, :id, :name, :image, :language, :interest, :gender, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
