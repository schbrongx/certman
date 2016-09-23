class Csr < ActiveRecord::Base
  has_one :keystore
  belongs_to :keypair
  belongs_to :csrtemplate
  
  validates :name, presence: true, length: { in: 5..100 }, uniqueness: true
  validates :content, presence: true, uniqueness: true
  validates :keypair_id, presence: true
  validates :csrtemplate_id, presence: true
  validates :cn, presence: true
end
