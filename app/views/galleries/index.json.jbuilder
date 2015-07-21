json.array!(@galleries) do |gallery|
  json.extract! gallery, :id, :title, :description, :image_url
  json.url gallery_url(gallery, format: :json)
end
