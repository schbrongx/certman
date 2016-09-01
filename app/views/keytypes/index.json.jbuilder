json.array!(@keytypes) do |keytype|
  json.extract! keytype, :id, :name
  json.url keytype_url(keytype, format: :json)
end
