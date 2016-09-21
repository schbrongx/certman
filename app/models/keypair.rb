class Keypair < ActiveRecord::Base
  has_one :keystore
  has_one :csr

  validates :name, presence: true, length: { in: 5..100 }, uniqueness: true
  validates :privatekey, presence: true, uniqueness: true
  validates :publickey, presence: true, uniqueness: true
end
