json.array!(@articles) do |article|
  json.extract! article, :id, :title, :category, :body, :image_url, :author
  json.url article_url(article, format: :json)
end
