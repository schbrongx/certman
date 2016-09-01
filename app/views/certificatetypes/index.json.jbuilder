json.array!(@certificatetypes) do |certificatetype|
  json.extract! certificatetype, :id, :name
  json.url certificatetype_url(certificatetype, format: :json)
end
