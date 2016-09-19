class Certificate < ActiveRecord::Base
  belongs_to :certificatetype
  has_one :keystore
  
  validates :name, presence: true, length: { in: 5..100 }, uniqueness: true
  validates :content, presence: true, uniqueness: true
end
