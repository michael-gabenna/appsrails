json.array!(@posts) do |post|
  json.extract! post, :id, :post
  json.url post_url(post, format: :json)
end
