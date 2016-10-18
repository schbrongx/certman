class Certificate < ActiveRecord::Base
  belongs_to :certificatetype
  belongs_to :csr
  has_one :keystore, :dependent => :nullify
  
  validates :name, presence: true, length: { in: 5..100 }, uniqueness: true
  validates :content, presence: true, uniqueness: true
end
