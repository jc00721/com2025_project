json.extract! song, :id, :title, :album_id, :genre, :length, :single, :created_at, :updated_at
json.url song_url(song, format: :json)