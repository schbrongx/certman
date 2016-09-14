class Keystore < ActiveRecord::Base
  belongs_to :keypair
  belongs_to :csr
  belongs_to :certificate
end
