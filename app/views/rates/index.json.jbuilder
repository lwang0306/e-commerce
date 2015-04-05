json.array!(@rates) do |rate|
  json.extract! rate, :id, :rating, :product_id
  json.url rate_url(rate, format: :json)
end
