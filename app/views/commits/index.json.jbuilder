json.array!(@commits) do |commit|
  json.extract! commit, :id, :mensage, :post_id
  json.url commit_url(commit, format: :json)
end
