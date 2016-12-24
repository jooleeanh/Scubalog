json.extract! animal, :id, :name, :image_url, :description, :created_at, :updated_at
json.url animal_url(animal, format: :json)