class Userorderdescription < ApplicationRecord
  belongs_to :userorder
  belongs_to :item
end
