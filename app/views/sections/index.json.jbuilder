json.array!(@sections) do |section|
  json.extract! section, :id, :name, :content
  json.url section_url(section, format: :json)
end
