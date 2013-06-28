class Contact < ActiveRecord::Base
  attr_accessible :cell, :email, :org_id, :phone
end
