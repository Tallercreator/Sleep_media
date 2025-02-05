json.extract! product_card, :id, :title, :description, :created_at, :updated_at
json.url product_card_url(product_card, format: :json)
