json.extract! dish, :id, :name, :prepare_time, :price, :created_at, :updated_at
json.url dish_url(dish, format: :json)
