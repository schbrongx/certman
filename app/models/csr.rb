class Csr < ActiveRecord::Base
  has_one :keystore
  
  validates :name, presence: true, length: { in: 5..100 }, uniqueness: true
  validates :content, presence: true, uniqueness: true
end
