json.extract! category, :id, :title, :description, :category_type, :created_at, :updated_at
json.url category_url(category, format: :json)
