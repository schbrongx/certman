class Key < ActiveRecord::Base
  belongs_to :keytype
  has_one :keystore
end
