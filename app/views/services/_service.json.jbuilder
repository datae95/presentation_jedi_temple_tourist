json.extract! service, :id, :name, :duration_in_min, :price, :created_at, :updated_at
json.url service_url(service, format: :json)
