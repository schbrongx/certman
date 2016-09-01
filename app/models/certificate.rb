class Certificate < ActiveRecord::Base
  belongs_to :certificatetype
  belongs_to :key
  belongs_to :csr
end
