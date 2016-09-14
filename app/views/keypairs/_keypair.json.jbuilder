json.extract! keypair, :id, :name, :privatekey, :publickey, :created_at, :updated_at
json.url keypair_url(keypair, format: :json)