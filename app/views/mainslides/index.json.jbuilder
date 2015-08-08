json.array!(@mainslides) do |mainslide|
  json.extract! mainslide, :id, :title, :descrip
  json.url mainslide_url(mainslide, format: :json)
end
