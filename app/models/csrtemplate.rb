class Csrtemplate < ActiveRecord::Base

  validates :name, presence: true, length: { in: 5..100 }, uniqueness: true
  validates :description, presence: true, length: { in: 1..500 }
end
