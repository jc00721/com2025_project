json.extract! artist, :id, :name, :dob, :label, :created_at, :updated_at
json.url artist_url(artist, format: :json)