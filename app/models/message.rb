class Message < ActiveRecord::Base
  attr_accessible :note, :org_id
  belongs_to :org
end
