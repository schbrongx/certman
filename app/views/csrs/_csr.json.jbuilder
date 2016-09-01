json.extract! csr, :id, :key_id, :content, :created_at, :updated_at
json.url csr_url(csr, format: :json)