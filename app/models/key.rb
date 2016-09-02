class Key < ActiveRecord::Base
  belongs_to :keytype
  has_one :keystore
  has_one :certificate
  has_one :csr
end
