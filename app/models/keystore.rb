class Keystore < ActiveRecord::Base
  belongs_to :keypair
  belongs_to :csr
  belongs_to :certificate
  
  validates :name, presence: true, length: { in: 5..100 }, uniqueness: true
  validates :description, presence: true
end
