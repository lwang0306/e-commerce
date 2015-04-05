json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :price, :weight, :average_rating
  json.url product_url(product, format: :json)
end
