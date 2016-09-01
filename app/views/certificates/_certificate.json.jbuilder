json.extract! certificate, :id, :certificatetype_id, :key_id, :csr_id, :content, :created_at, :updated_at
json.url certificate_url(certificate, format: :json)