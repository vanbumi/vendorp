json.array!(@sidebars) do |sidebar|
  json.extract! sidebar, :id, :title, :image_url, :description
  json.url sidebar_url(sidebar, format: :json)
end
