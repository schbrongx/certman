class Certificate < ActiveRecord::Base
  belongs_to :certificatetype
  has_one :keystore
end
