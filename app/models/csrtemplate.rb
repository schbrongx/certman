class Csrtemplate < ActiveRecord::Base
  has_one :csr, :dependent => :restrict_with_error

  validates :name, presence: true, length: { in: 5..100 }, uniqueness: true
  validates :description, presence: true, length: { in: 1..500 }
end
