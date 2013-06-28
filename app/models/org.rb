class Org < ActiveRecord::Base
  attr_accessible :party_id

  has_many :ranks
  has_one :contact
end
