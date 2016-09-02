class Keystore < ActiveRecord::Base
  belongs_to :publickey, class_name: 'Key'
  belongs_to :privatekey, class_name: 'Key'
  belongs_to :csr
  belongs_to :certificate
end
