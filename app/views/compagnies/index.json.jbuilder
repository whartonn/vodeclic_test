json.array!(@compagnies) do |compagny|
  json.extract! compagny, :id, :name
  json.url compagny_url(compagny, format: :json)
end
