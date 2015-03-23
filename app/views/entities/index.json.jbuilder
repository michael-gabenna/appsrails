json.array!(@entities) do |entity|
  json.extract! entity, :id, :name, :street, :tel
  json.url entity_url(entity, format: :json)
end
