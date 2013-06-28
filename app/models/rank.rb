class Rank < ActiveRecord::Base
  attr_accessible :contact_type_cd, :org_id, :rank
  belongs_to :org
end
