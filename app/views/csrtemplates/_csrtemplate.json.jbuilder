json.extract! csrtemplate, :id, :name, :description, :cn, :ou, :o, :l, :s, :c, :email, :created_at, :updated_at
json.url csrtemplate_url(csrtemplate, format: :json)