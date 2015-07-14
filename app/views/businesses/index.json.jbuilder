json.array!(@businesses) do |business|
  json.extract! business, :id, :category
  json.url business_url(business, format: :json)
end
