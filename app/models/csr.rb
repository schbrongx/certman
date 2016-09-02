class Csr < ActiveRecord::Base
  belongs_to :key
  has_one :certificate
  has_one :keystore
end
