class Setting < ActiveRecord::Base

  validates :name, presence: true, length: { in: 5..100 }, uniqueness: true
  validates :description, presence: true
  validates :value, presence: true
end
