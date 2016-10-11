class Keystore < ActiveRecord::Base
  belongs_to :keypair
  belongs_to :csr
  belongs_to :certificate
  
  validates :name, presence: true, length: { in: 5..100 }, uniqueness: true
  validates :description, presence: true
  #validates :keypair_id, allow_nil: true, allow_blank: true
  #validates :csr_id, allow_nil: true, allow_blank: true
  #validates :certificate_id, allow_nil: true, allow_blank: true
end
