json.extract! room, :id, :title, :description, :price, :capacity, :bathrooms, :user_id, :pets, :smoking, :wifi, :bath, :share, :parties, :created_at, :updated_at
json.url room_url(room, format: :json)
