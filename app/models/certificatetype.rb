class Certificatetype < ActiveRecord::Base
  has_one :certificate
  
  validates :name, presence: true, length: { in: 5..100 }, uniqueness: true
end
