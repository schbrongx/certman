json.array!(@keys) do |key|
  json.extract! key, :id, :keytype_id, :content
  json.url key_url(key, format: :json)
end
