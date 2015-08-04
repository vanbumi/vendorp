json.array!(@vendor_cats) do |vendor_cat|
  json.extract! vendor_cat, :id, :title
  json.url vendor_cat_url(vendor_cat, format: :json)
end
