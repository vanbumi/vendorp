json.array!(@infos) do |info|
  json.extract! info, :id, :comp_name, :comp_address, :comp_phone, :comp_email, :comp_web, :comp_social
  json.url info_url(info, format: :json)
end
