class Key < ActiveRecord::Base
  belongs_to :keytype
  belongs_to :keypartner, class_name: "Key"
end
